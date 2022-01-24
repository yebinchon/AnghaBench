#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cvmx_wqe_t ;
struct TYPE_10__ {scalar_t__ wqp; } ;
struct TYPE_8__ {scalar_t__ wqp; } ;
struct TYPE_11__ {TYPE_4__ s_sstatus4; void* u64; TYPE_2__ s_sstatus3_cn68xx; } ;
typedef  TYPE_5__ cvmx_pow_tag_load_resp_t ;
struct TYPE_9__ {int is_io; int get_cur; int get_wqp; void* coreid; int /*<<< orphan*/  did; void* mem_region; } ;
struct TYPE_7__ {int is_io; int opcode; void* coreid; int /*<<< orphan*/  did; void* mem_region; } ;
struct TYPE_12__ {scalar_t__ u64; TYPE_3__ sstatus; TYPE_1__ sstatus_cn68xx; } ;
typedef  TYPE_6__ cvmx_pow_load_addr_t ;

/* Variables and functions */
 void* CVMX_IO_SEG ; 
 int /*<<< orphan*/  CVMX_OCT_DID_TAG_TAG1 ; 
 int /*<<< orphan*/  CVMX_OCT_DID_TAG_TAG5 ; 
 int /*<<< orphan*/  OCTEON_FEATURE_CN68XX_WQE ; 
 void* FUNC0 () ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 void* FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline cvmx_wqe_t *FUNC4(void)
{
    cvmx_pow_load_addr_t load_addr;
    cvmx_pow_tag_load_resp_t load_resp;

    if (FUNC3(OCTEON_FEATURE_CN68XX_WQE)) {
        load_addr.u64 = 0;
        load_addr.sstatus_cn68xx.mem_region = CVMX_IO_SEG;
        load_addr.sstatus_cn68xx.is_io = 1;
        load_addr.sstatus_cn68xx.did = CVMX_OCT_DID_TAG_TAG5;
        load_addr.sstatus_cn68xx.coreid = FUNC0();
        load_addr.sstatus_cn68xx.opcode = 3;
        load_resp.u64 = FUNC2(load_addr.u64);
        if (load_resp.s_sstatus3_cn68xx.wqp)
            return (cvmx_wqe_t*)FUNC1(load_resp.s_sstatus3_cn68xx.wqp);
        else
            return (cvmx_wqe_t*)0;
    } else {
        load_addr.u64 = 0;
        load_addr.sstatus.mem_region = CVMX_IO_SEG;
        load_addr.sstatus.is_io = 1;
        load_addr.sstatus.did = CVMX_OCT_DID_TAG_TAG1;
        load_addr.sstatus.coreid = FUNC0();
        load_addr.sstatus.get_cur = 1;
        load_addr.sstatus.get_wqp = 1;
        load_resp.u64 = FUNC2(load_addr.u64);
        return (cvmx_wqe_t*)FUNC1(load_resp.s_sstatus4.wqp);
    }
}