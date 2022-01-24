#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct lafe_line_reader {char* line_end; char* buff_end; char* line_start; char* buff; int buff_length; int /*<<< orphan*/ * f; int /*<<< orphan*/  pathname; scalar_t__ nullSeparator; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lafe_line_reader*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 char* FUNC7 (char*,size_t) ; 
 int /*<<< orphan*/ * stdin ; 

const char *
FUNC8(struct lafe_line_reader *lr)
{
	size_t bytes_wanted, bytes_read, new_buff_size;
	char *line_start, *p;

	for (;;) {
		/* If there's a line in the buffer, return it immediately. */
		while (lr->line_end < lr->buff_end) {
			line_start = lr->line_start;
			lr->line_start = ++lr->line_end;
			FUNC5(lr);

			if (lr->nullSeparator || line_start[0] != '\0')
				return (line_start);
		}

		/* If we're at end-of-file, process the final data. */
		if (lr->f == NULL) {
			if (lr->line_start == lr->buff_end)
				return (NULL); /* No more text */
			line_start = lr->line_start;
			lr->line_start = lr->buff_end;
			return (line_start);
		}

		/* Buffer only has part of a line. */
		if (lr->line_start > lr->buff) {
			/* Move a leftover fractional line to the beginning. */
			FUNC6(lr->buff, lr->line_start,
			    lr->buff_end - lr->line_start);
			lr->buff_end -= lr->line_start - lr->buff;
			lr->line_end -= lr->line_start - lr->buff;
			lr->line_start = lr->buff;
		} else {
			/* Line is too big; enlarge the buffer. */
			new_buff_size = lr->buff_length * 2;
			if (new_buff_size <= lr->buff_length)
				FUNC4(1, ENOMEM,
				    "Line too long in %s", lr->pathname);
			lr->buff_length = new_buff_size;
			/*
			 * Allocate one extra byte to allow terminating
			 * the buffer.
			 */
			p = FUNC7(lr->buff, new_buff_size + 1);
			if (p == NULL)
				FUNC4(1, ENOMEM,
				    "Line too long in %s", lr->pathname);
			lr->buff_end = p + (lr->buff_end - lr->buff);
			lr->line_end = p + (lr->line_end - lr->buff);
			lr->line_start = lr->buff = p;
		}

		/* Get some more data into the buffer. */
		bytes_wanted = lr->buff + lr->buff_length - lr->buff_end;
		bytes_read = FUNC3(lr->buff_end, 1, bytes_wanted, lr->f);
		lr->buff_end += bytes_read;
		*lr->buff_end = '\0'; /* Always terminate buffer */
		FUNC5(lr);

		if (FUNC2(lr->f))
			FUNC4(1, errno, "Can't read %s", lr->pathname);
		if (FUNC1(lr->f)) {
			if (lr->f != stdin)
				FUNC0(lr->f);
			lr->f = NULL;
		}
	}
}