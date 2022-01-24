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
typedef  int /*<<< orphan*/  u8 ;
struct bitfield {size_t max_bits; int /*<<< orphan*/ * bits; } ;

/* Variables and functions */
 struct bitfield* FUNC0 (int) ; 

struct bitfield * FUNC1(size_t max_bits)
{
	struct bitfield *bf;

	bf = FUNC0(sizeof(*bf) + (max_bits + 7) / 8);
	if (bf == NULL)
		return NULL;
	bf->bits = (u8 *) (bf + 1);
	bf->max_bits = max_bits;
	return bf;
}