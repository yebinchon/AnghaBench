#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  iv; } ;
struct TYPE_7__ {scalar_t__ u64; TYPE_1__ s; } ;
typedef  TYPE_3__ cvmx_pip_crc_ivx_t ;
struct TYPE_6__ {void* reflect; void* invres; } ;
struct TYPE_8__ {scalar_t__ u64; TYPE_2__ s; } ;
typedef  TYPE_4__ cvmx_pip_crc_ctlx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  OCTEON_CN38XX ; 
 int /*<<< orphan*/  OCTEON_CN58XX ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline void FUNC4(uint64_t interface, uint64_t invert_result, uint64_t reflect, uint32_t initialization_vector)
{
    if ((FUNC2(OCTEON_CN38XX) || FUNC2(OCTEON_CN58XX)))
    {
        cvmx_pip_crc_ctlx_t config;
        cvmx_pip_crc_ivx_t pip_crc_ivx;

        config.u64 = 0;
        config.s.invres = invert_result;
        config.s.reflect = reflect;
        FUNC3(FUNC0(interface), config.u64);

        pip_crc_ivx.u64 = 0;
        pip_crc_ivx.s.iv = initialization_vector;
        FUNC3(FUNC1(interface), pip_crc_ivx.u64);
    }
}