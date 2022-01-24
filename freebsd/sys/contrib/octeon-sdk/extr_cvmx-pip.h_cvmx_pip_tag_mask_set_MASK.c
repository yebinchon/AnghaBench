#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_3__ {int en; } ;
struct TYPE_4__ {int /*<<< orphan*/  u64; TYPE_1__ s; } ;
typedef  TYPE_2__ cvmx_pip_tag_incx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(uint64_t mask_index, uint64_t offset, uint64_t len)
{
    while (len--)
    {
        cvmx_pip_tag_incx_t pip_tag_incx;
        uint64_t index = mask_index*16 + offset/8;
        pip_tag_incx.u64 = FUNC1(FUNC0(index));
        pip_tag_incx.s.en |= 0x80 >> (offset & 0x7);
        FUNC2(FUNC0(index), pip_tag_incx.u64);
        offset++;
    }
}