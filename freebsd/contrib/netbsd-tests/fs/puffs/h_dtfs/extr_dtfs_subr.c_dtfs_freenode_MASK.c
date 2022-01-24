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
struct TYPE_2__ {scalar_t__ va_nlink; int va_type; int /*<<< orphan*/  va_size; } ;
struct puffs_node {TYPE_1__ pn_va; } ;
struct dtfs_mount {int /*<<< orphan*/  dtm_fsizes; } ;
struct dtfs_file {int df_datalen; struct dtfs_file* df_linktarget; struct dtfs_file** df_blocks; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int DTFS_BLOCKSHIFT ; 
 struct dtfs_file* FUNC1 (struct puffs_node*) ; 
#define  VBLK 134 
#define  VCHR 133 
#define  VDIR 132 
#define  VFIFO 131 
#define  VLNK 130 
#define  VREG 129 
#define  VSOCK 128 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct dtfs_file*) ; 
 struct dtfs_mount* FUNC4 (struct puffs_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct puffs_node*) ; 

void
FUNC6(struct puffs_node *pn)
{
	struct dtfs_file *df = FUNC1(pn);
	struct dtfs_mount *dtm;
	int i;

	FUNC2(pn->pn_va.va_nlink == 0);
	dtm = FUNC4(pn);

	switch (pn->pn_va.va_type) {
	case VREG:
		FUNC2(dtm->dtm_fsizes >= pn->pn_va.va_size);
		dtm->dtm_fsizes -= pn->pn_va.va_size;
		for (i = 0; i < FUNC0(df->df_datalen, DTFS_BLOCKSHIFT); i++)
			FUNC3(df->df_blocks[i]);
		if (df->df_datalen > i << DTFS_BLOCKSHIFT)
			FUNC3(df->df_blocks[i]);
		break;
	case VLNK:
		FUNC3(df->df_linktarget);
		break;
	case VCHR:
	case VBLK:
	case VDIR:
	case VSOCK:
	case VFIFO:
		break;
	default:
		FUNC2(0);
		break;
	}

	FUNC3(df);
	FUNC5(pn);
}