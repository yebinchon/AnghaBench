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
struct TYPE_2__ {scalar_t__ va_size; int va_bytes; } ;
struct puffs_node {TYPE_1__ pn_va; } ;
struct dtfs_mount {int /*<<< orphan*/  dtm_fsizes; } ;
struct dtfs_file {int df_numblocks; scalar_t__ df_datalen; int /*<<< orphan*/ * df_blocks; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int) ; 
 int DTFS_BLOCKSHIFT ; 
 int /*<<< orphan*/  DTFS_BLOCKSIZE ; 
 struct dtfs_file* FUNC1 (struct puffs_node*) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dtfs_mount* FUNC7 (struct puffs_node*) ; 

void
FUNC8(struct puffs_node *pn, off_t newsize)
{
	struct dtfs_file *df = FUNC1(pn);
	struct dtfs_mount *dtm;
	size_t newblocks;
	int needalloc, shrinks;
	int i;

	needalloc = newsize > FUNC2(df->df_datalen, DTFS_BLOCKSIZE);
	shrinks = newsize < pn->pn_va.va_size;

	if (needalloc || shrinks) {
		newblocks = FUNC0(newsize, DTFS_BLOCKSHIFT) + 1;

		if (shrinks)
			for (i = newblocks; i < df->df_numblocks; i++)
				FUNC5(df->df_blocks[i]);

		df->df_blocks = FUNC4(df->df_blocks,
		    newblocks * sizeof(uint8_t *));
		/*
		 * if extended, set storage to zero
		 * to match correct behaviour
		 */ 
		if (!shrinks) {
			for (i = df->df_numblocks; i < newblocks; i++) {
				df->df_blocks[i] = FUNC3(DTFS_BLOCKSIZE);
				FUNC6(df->df_blocks[i], 0, DTFS_BLOCKSIZE);
			}
		}

		df->df_datalen = newsize;
		df->df_numblocks = newblocks;
	}

	dtm = FUNC7(pn);
	if (!shrinks) {
		dtm->dtm_fsizes += newsize - pn->pn_va.va_size;
	} else {
		dtm->dtm_fsizes -= pn->pn_va.va_size - newsize;
	}

	pn->pn_va.va_size = newsize;
	pn->pn_va.va_bytes = FUNC0(newsize,DTFS_BLOCKSHIFT)>>DTFS_BLOCKSHIFT;
}