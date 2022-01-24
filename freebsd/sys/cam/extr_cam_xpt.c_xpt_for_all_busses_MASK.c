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
typedef  int /*<<< orphan*/  xpt_busfunc_t ;
struct xpt_traverse_config {void* tr_arg; int /*<<< orphan*/ * tr_func; int /*<<< orphan*/  depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  XPT_DEPTH_BUS ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct xpt_traverse_config*) ; 
 int /*<<< orphan*/  xptdefbusfunc ; 

__attribute__((used)) static int
FUNC1(xpt_busfunc_t *tr_func, void *arg)
{
	struct xpt_traverse_config tr_config;

	tr_config.depth = XPT_DEPTH_BUS;
	tr_config.tr_func = tr_func;
	tr_config.tr_arg = arg;

	return(FUNC0(NULL, xptdefbusfunc, &tr_config));
}