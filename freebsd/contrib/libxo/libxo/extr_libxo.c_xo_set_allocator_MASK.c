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
typedef  int /*<<< orphan*/  xo_realloc_func_t ;
typedef  int /*<<< orphan*/  xo_free_func_t ;

/* Variables and functions */
 int /*<<< orphan*/  xo_free ; 
 int /*<<< orphan*/  xo_realloc ; 

void
FUNC0 (xo_realloc_func_t realloc_func, xo_free_func_t free_func)
{
    xo_realloc = realloc_func;
    xo_free = free_func;
}