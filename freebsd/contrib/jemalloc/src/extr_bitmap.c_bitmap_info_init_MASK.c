#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t nbits; int /*<<< orphan*/  ngroups; } ;
typedef  TYPE_1__ bitmap_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 size_t LG_BITMAP_MAXBITS ; 
 size_t FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void
FUNC3(bitmap_info_t *binfo, size_t nbits) {
	FUNC2(nbits > 0);
	FUNC2(nbits <= (FUNC1(1) << LG_BITMAP_MAXBITS));

	binfo->ngroups = FUNC0(nbits);
	binfo->nbits = nbits;
}