#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  xo_flush; int /*<<< orphan*/  xo_close; int /*<<< orphan*/  xo_write; int /*<<< orphan*/ * xo_opaque; } ;
typedef  TYPE_1__ xo_handle_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  xo_close_file ; 
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  xo_flush_file ; 
 int /*<<< orphan*/  xo_write_to_file ; 

int
FUNC2 (xo_handle_t *xop, FILE *fp)
{
    xop = FUNC0(xop);

    if (fp == NULL) {
	FUNC1(xop, "xo_set_file: NULL fp");
	return -1;
    }

    xop->xo_opaque = fp;
    xop->xo_write = xo_write_to_file;
    xop->xo_close = xo_close_file;
    xop->xo_flush = xo_flush_file;

    return 0;
}