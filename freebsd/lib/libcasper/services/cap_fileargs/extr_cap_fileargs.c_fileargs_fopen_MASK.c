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
typedef  int /*<<< orphan*/  fileargs_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*) ; 

FILE *
FUNC2(fileargs_t *fa, const char *name, const char *mode)
{
	int fd;

	if ((fd = FUNC1(fa, name)) < 0) {
		return (NULL);
	}

	return (FUNC0(fd, mode));
}