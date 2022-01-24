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
typedef  int /*<<< orphan*/  uint8_t ;
struct puffs_usermount {int dummy; } ;
struct TYPE_2__ {scalar_t__ va_type; } ;
struct puffs_node {TYPE_1__ pn_va; } ;
struct puffs_cred {int dummy; } ;
struct dtfs_file {int /*<<< orphan*/ ** df_blocks; scalar_t__ df_datalen; } ;
typedef  size_t quad_t ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DTFS_BLOCKSHIFT ; 
 int /*<<< orphan*/  DTFS_BLOCKSIZE ; 
 struct dtfs_file* FUNC3 (void*) ; 
 int EINVAL ; 
 int EISDIR ; 
 size_t FUNC4 (size_t,scalar_t__) ; 
 scalar_t__ VREG ; 
 int /*<<< orphan*/  FUNC5 (struct puffs_node*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

int
FUNC7(struct puffs_usermount *pu, void *opc, uint8_t *buf,
	off_t offset, size_t *resid, const struct puffs_cred *pcr, int ioflag)
{
	struct puffs_node *pn = opc;
	struct dtfs_file *df = FUNC3(opc);
	quad_t xfer, origxfer;
	uint8_t *src, *dest;
	size_t copylen;

	if (pn->pn_va.va_type != VREG)
		return EISDIR;

	xfer = FUNC4(*resid, df->df_datalen - offset);
	if (xfer < 0)
		return EINVAL;

	dest = buf;
	origxfer = xfer;
	while (xfer > 0) {
		copylen = FUNC4(xfer, FUNC0(offset, DTFS_BLOCKSIZE));
		src = df->df_blocks[FUNC1(offset, DTFS_BLOCKSHIFT)]
		    + FUNC2(offset, DTFS_BLOCKSIZE);
		FUNC6(dest, src, copylen);
		offset += copylen;
		dest += copylen;
		xfer -= copylen;
	}
	*resid -= origxfer;

	FUNC5(pn, 1, 0, 0);

	return 0;
}