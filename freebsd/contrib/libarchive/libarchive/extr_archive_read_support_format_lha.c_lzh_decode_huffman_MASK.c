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
struct huffman {int* tbl; unsigned int shift_bits; int len_avail; } ;

/* Variables and functions */
 int FUNC0 (struct huffman*,unsigned int,int) ; 

__attribute__((used)) static inline int
FUNC1(struct huffman *hf, unsigned rbits)
{
	int c;
	/*
	 * At first search an index table for a bit pattern.
	 * If it fails, search a huffman tree for.
	 */
	c = hf->tbl[rbits >> hf->shift_bits];
	if (c < hf->len_avail || hf->len_avail == 0)
		return (c);
	/* This bit pattern needs to be found out at a huffman tree. */
	return (FUNC0(hf, rbits, c));
}