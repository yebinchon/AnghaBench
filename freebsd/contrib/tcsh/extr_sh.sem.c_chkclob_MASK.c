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
struct stat {scalar_t__ st_size; int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 
 int /*<<< orphan*/  ERR_EXISTS ; 
 int NOCLOBBER_ASK ; 
 int NOCLOBBER_NOTEMPTY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int no_clobber ; 
 scalar_t__ FUNC3 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void
FUNC5(const char *cp)
{
    struct stat stb;

    if (FUNC3(cp, &stb) < 0)
	return;
    if (FUNC1(stb.st_mode))
	return;
    if (no_clobber & NOCLOBBER_NOTEMPTY && stb.st_size == 0)
	return;
    if (no_clobber & NOCLOBBER_ASK) {
	if (FUNC2(FUNC0(22, 15,
	    "Do you really want to overwrite an existing file? [N/y] ")))
	    return;
    }

    FUNC4(ERR_EXISTS, cp);
}