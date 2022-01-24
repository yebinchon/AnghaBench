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
struct pfr_buffer {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

int
FUNC4(struct pfr_buffer *b, char *file, int nonetwork,
    int (*append_addr)(struct pfr_buffer *, char *, int))
{
	FILE	*fp;
	char	 buf[BUF_SIZE];
	int	 rv;

	if (file == NULL)
		return (0);
	if (!FUNC3(file, "-"))
		fp = stdin;
	else {
		fp = FUNC1(file, "r");
		if (fp == NULL)
			return (-1);
	}
	while ((rv = FUNC2(buf, fp)) == 1)
		if (append_addr(b, buf, nonetwork)) {
			rv = -1;
			break;
		}
	if (fp != stdin)
		FUNC0(fp);
	return (rv);
}