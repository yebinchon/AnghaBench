#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  z_sa_hdl; } ;
typedef  TYPE_1__ znode_t ;
struct TYPE_13__ {int /*<<< orphan*/ * v_object; int /*<<< orphan*/ * v_mount; } ;
typedef  TYPE_2__ vnode_t ;
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  int /*<<< orphan*/ * vm_object_t ;
struct TYPE_14__ {int uio_loffset; } ;
typedef  TYPE_3__ uio_t ;
typedef  scalar_t__ uint64_t ;
struct sf_buf {int dummy; } ;
typedef  int int64_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 int PAGEMASK ; 
 int PAGEOFFSET ; 
 scalar_t__ PAGESIZE ; 
 int /*<<< orphan*/  UIO_READ ; 
 TYPE_1__* FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC8 (scalar_t__,scalar_t__,TYPE_3__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,struct sf_buf**) ; 
 int /*<<< orphan*/  FUNC10 (struct sf_buf*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(vnode_t *vp, int nbytes, uio_t *uio)
{
	znode_t *zp = FUNC2(vp);
	vm_object_t obj;
	int64_t start;
	caddr_t va;
	int len = nbytes;
	int off;
	int error = 0;

	FUNC0(vp->v_mount != NULL);
	obj = vp->v_object;
	FUNC0(obj != NULL);

	start = uio->uio_loffset;
	off = start & PAGEOFFSET;
	FUNC11(obj);
	for (start &= PAGEMASK; len > 0; start += PAGESIZE) {
		vm_page_t pp;
		uint64_t bytes = FUNC1(PAGESIZE - off, len);

		if ((pp = FUNC5(vp, start))) {
			struct sf_buf *sf;
			caddr_t va;

			FUNC12(obj);
			va = FUNC9(pp, &sf);
#ifdef illumos
			error = uiomove(va + off, bytes, UIO_READ, uio);
#else
			error = FUNC8(va + off, bytes, uio);
#endif
			FUNC10(sf);
			FUNC11(obj);
			FUNC4(pp);
		} else {
			FUNC12(obj);
			error = FUNC3(FUNC6(zp->z_sa_hdl),
			    uio, bytes);
			FUNC11(obj);
		}
		len -= bytes;
		off = 0;
		if (error)
			break;
	}
	FUNC12(obj);
	return (error);
}