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
struct archive_string {char* s; } ;
struct archive_cmdline {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int ARCHIVE_FAILED ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_string*) ; 
 scalar_t__ FUNC2 (struct archive_string*) ; 
 int FUNC3 (struct archive_cmdline*,char const*) ; 
 int FUNC4 (struct archive_cmdline*,char*) ; 
 scalar_t__ FUNC5 (struct archive_string*,char const*) ; 
 char* FUNC6 (char*,char) ; 

int
FUNC7(struct archive_cmdline *data, const char *cmd)
{
	struct archive_string as;
	const char *p;
	ssize_t al;
	int r;

	FUNC1(&as);

	/* Get first argument as a command path. */
	al = FUNC5(&as, cmd);
	if (al < 0) {
		r = ARCHIVE_FAILED;/* Invalid sequence. */
		goto exit_function;
	}
	if (FUNC2(&as) == 0) {
		r = ARCHIVE_FAILED;/* An empty command path. */
		goto exit_function;
	}
	r = FUNC4(data, as.s);
	if (r != ARCHIVE_OK)
		goto exit_function;
	p = FUNC6(as.s, '/');
	if (p == NULL)
		p = as.s;
	else
		p++;
	r = FUNC3(data, p);
	if (r != ARCHIVE_OK)
		goto exit_function;
	cmd += al;

	for (;;) {
		al = FUNC5(&as, cmd);
		if (al < 0) {
			r = ARCHIVE_FAILED;/* Invalid sequence. */
			goto exit_function;
		}
		if (al == 0)
			break;
		cmd += al;
		if (FUNC2(&as) == 0 && *cmd == '\0')
			break;
		r = FUNC3(data, as.s);
		if (r != ARCHIVE_OK)
			goto exit_function;
	}
	r = ARCHIVE_OK;
exit_function:
	FUNC0(&as);
	return (r);
}