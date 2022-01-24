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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int convert ; 
 int errno ; 
 int /*<<< orphan*/ * FUNC0 (int,char*) ; 
 int /*<<< orphan*/ * file ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int
FUNC4(int fd, FILE *f, const char *mode)
{

	if (f == NULL) {
		file = FUNC0(fd, "w");
		if (file == NULL) {
			int en = errno;
			FUNC3(LOG_ERR, "fdopen() failed: %s",
			    FUNC2(errno));
			return en;
		}
	} else
		file = f;
	convert = !FUNC1(mode, "netascii");
	return 0;
}