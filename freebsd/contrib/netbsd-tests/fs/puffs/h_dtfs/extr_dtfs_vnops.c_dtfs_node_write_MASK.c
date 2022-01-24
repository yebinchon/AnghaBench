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
struct TYPE_2__ {scalar_t__ va_type; scalar_t__ va_size; } ;
struct puffs_node {TYPE_1__ pn_va; } ;
struct puffs_cred {int dummy; } ;
struct dtfs_file {int /*<<< orphan*/ ** df_blocks; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DTFS_BLOCKSHIFT ; 
 int /*<<< orphan*/  DTFS_BLOCKSIZE ; 
 struct dtfs_file* FUNC3 (void*) ; 
 int EISDIR ; 
 size_t FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int PUFFS_IO_APPEND ; 
 scalar_t__ VREG ; 
 int /*<<< orphan*/  FUNC5 (struct puffs_node*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct puffs_node*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

int
FUNC8(struct puffs_usermount *pu, void *opc, uint8_t *buf,
	off_t offset, size_t *resid, const struct puffs_cred *pcr, int ioflag)
{
	struct puffs_node *pn = opc;
	struct dtfs_file *df = FUNC3(opc);
	uint8_t *src, *dest;
	size_t copylen;

	if (pn->pn_va.va_type != VREG)
		return EISDIR;

	if (ioflag & PUFFS_IO_APPEND)
		offset = pn->pn_va.va_size;

	if (*resid + offset > pn->pn_va.va_size)
		FUNC5(pn, *resid + offset);

	src = buf;
	while (*resid > 0) {
		int i;
		copylen = FUNC4(*resid, FUNC0(offset, DTFS_BLOCKSIZE));
		i = FUNC1(offset, DTFS_BLOCKSHIFT);
		dest = df->df_blocks[i]
		    + FUNC2(offset, DTFS_BLOCKSIZE);
		FUNC7(dest, src, copylen);
		offset += copylen;
		dest += copylen;
		*resid -= copylen;
	}

	FUNC6(pn, 0, 1, 1);

	return 0;
}