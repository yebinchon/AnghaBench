#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char const* (* implementation_name ) () ;} ;

/* Variables and functions */
 TYPE_1__* implementation ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char const* FUNC1 () ; 

const char *
FUNC2(void)
{
#ifndef __EMSCRIPTEN__
    FUNC0();
    return implementation->implementation_name();
#else
    return "js";
#endif
}