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
struct huffman {int len_size; int tbl_bits; int /*<<< orphan*/ * tbl; int /*<<< orphan*/ * bitlen; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/ * FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int
FUNC4(struct huffman *hf, size_t len_size, int tbl_bits)
{

	if (hf->bitlen == NULL || hf->len_size != (int)len_size) {
		FUNC1(hf->bitlen);
		hf->bitlen = FUNC0(len_size,  sizeof(hf->bitlen[0]));
		if (hf->bitlen == NULL)
			return (ARCHIVE_FATAL);
		hf->len_size = (int)len_size;
	} else
		FUNC3(hf->bitlen, 0, len_size *  sizeof(hf->bitlen[0]));
	if (hf->tbl == NULL) {
		hf->tbl = FUNC2(((size_t)1 << tbl_bits) * sizeof(hf->tbl[0]));
		if (hf->tbl == NULL)
			return (ARCHIVE_FATAL);
		hf->tbl_bits = tbl_bits;
	}
	return (ARCHIVE_OK);
}