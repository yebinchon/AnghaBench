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
typedef  int mode_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static FILE *
FUNC6(char *filename)
{
    FILE *result = 0;

    FUNC0(filename, "/tmp/XXXXXX", PATH_MAX);
#if HAVE_MKSTEMP
    {
	int oldmask = (int) umask(077);
	int fd = mkstemp(filename);
	if (fd >= 0)
	    result = fdopen(fd, "w");
	umask((mode_t) oldmask);
    }
#else
    if (FUNC4(filename) != 0)
	result = FUNC2(filename, "w");
#endif
    return result;
}