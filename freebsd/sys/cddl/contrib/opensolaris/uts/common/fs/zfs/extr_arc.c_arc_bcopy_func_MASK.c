#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zio_t ;
typedef  int /*<<< orphan*/  zbookmark_phys_t ;
typedef  int /*<<< orphan*/  blkptr_t ;
struct TYPE_5__ {int /*<<< orphan*/  b_data; } ;
typedef  TYPE_1__ arc_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

void
FUNC3(zio_t *zio, const zbookmark_phys_t *zb, const blkptr_t *bp,
    arc_buf_t *buf, void *arg)
{
	if (buf == NULL)
		return;

	FUNC2(buf->b_data, arg, FUNC1(buf));
	FUNC0(buf, arg);
}