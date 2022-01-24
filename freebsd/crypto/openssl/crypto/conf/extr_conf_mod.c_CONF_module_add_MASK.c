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
typedef  int /*<<< orphan*/  conf_init_func ;
typedef  int /*<<< orphan*/  conf_finish_func ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC1(const char *name, conf_init_func *ifunc,
                    conf_finish_func *ffunc)
{
    if (FUNC0(NULL, name, ifunc, ffunc))
        return 1;
    else
        return 0;
}