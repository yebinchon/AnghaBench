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
 int FUNC0 (int /*<<< orphan*/ *,char const**,int,int) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(FILE *out, const char *file)
{
    int flags;
    int ret;

    if(*file == '-') {
	flags = FUNC1(file);
	file = ".";
    } else
	flags = FUNC1("");

    ret = FUNC0(out, &file, 1, flags);
    FUNC2(out);
    return ret;
}