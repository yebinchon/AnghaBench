#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xuio_t ;
typedef  int /*<<< orphan*/  iovec_t ;
struct TYPE_4__ {int cnt; struct TYPE_4__* bufs; struct TYPE_4__* iovp; } ;
typedef  TYPE_1__ dmu_xuio_t ;
typedef  int /*<<< orphan*/  arc_buf_t ;

/* Variables and functions */
 scalar_t__ UIO_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  xuiostat_onloan_rbuf ; 
 int /*<<< orphan*/  xuiostat_onloan_wbuf ; 

void
FUNC4(xuio_t *xuio)
{
	dmu_xuio_t *priv = FUNC1(xuio);
	int nblk = priv->cnt;

	FUNC3(priv->iovp, nblk * sizeof (iovec_t));
	FUNC3(priv->bufs, nblk * sizeof (arc_buf_t *));
	FUNC3(priv, sizeof (dmu_xuio_t));

	if (FUNC2(xuio) == UIO_READ)
		FUNC0(xuiostat_onloan_rbuf, -nblk);
	else
		FUNC0(xuiostat_onloan_wbuf, -nblk);
}