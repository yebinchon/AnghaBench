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
struct TYPE_4__ {int /*<<< orphan*/ * v_object; int /*<<< orphan*/ * v_mount; } ;
typedef  TYPE_1__ vnode_t ;
typedef  int /*<<< orphan*/ * vm_page_t ;
typedef  int /*<<< orphan*/ * vm_object_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct sf_buf {int dummy; } ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int int64_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMU_READ_PREFETCH ; 
 int PAGEMASK ; 
 int PAGEOFFSET ; 
 scalar_t__ PAGESIZE ; 
 int UIO_NOCOPY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct sf_buf**) ; 
 int /*<<< orphan*/  FUNC8 (struct sf_buf*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(vnode_t *vp, int64_t start, int len, objset_t *os, uint64_t oid,
    int segflg, dmu_tx_t *tx)
{
	vm_object_t obj;
	struct sf_buf *sf;
	caddr_t va;
	int off;

	FUNC0(segflg != UIO_NOCOPY);
	FUNC0(vp->v_mount != NULL);
	obj = vp->v_object;
	FUNC0(obj != NULL);

	off = start & PAGEOFFSET;
	FUNC9(obj);
	FUNC5(obj, 1);
	for (start &= PAGEMASK; len > 0; start += PAGESIZE) {
		vm_page_t pp;
		int nbytes = FUNC2(PAGESIZE - off, len);

		if ((pp = FUNC3(vp, start, off, nbytes)) != NULL) {
			FUNC10(obj);

			va = FUNC7(pp, &sf);
			(void) FUNC1(os, oid, start+off, nbytes,
			    va+off, DMU_READ_PREFETCH);;
			FUNC8(sf);

			FUNC9(obj);
			FUNC4(pp);
		}
		len -= nbytes;
		off = 0;
	}
	FUNC6(obj);
	FUNC10(obj);
}