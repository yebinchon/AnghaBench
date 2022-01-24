#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_5__ {int /*<<< orphan*/  u64; } ;
typedef  TYPE_1__ cvmx_pip_prt_tagx_t ;
struct TYPE_6__ {int /*<<< orphan*/  u64; } ;
typedef  TYPE_2__ cvmx_pip_prt_cfgx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  OCTEON_FEATURE_PKND ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC7(uint64_t port_num,
                                        cvmx_pip_prt_cfgx_t port_cfg,
                                        cvmx_pip_prt_tagx_t port_tag_cfg)
{

    if (FUNC6(OCTEON_FEATURE_PKND))
    {
        int interface, index, pknd;

        interface = FUNC3(port_num);
        index = FUNC2(port_num);
	pknd = FUNC4(interface, index);

	port_num = pknd; /* overload port_num with pknd */
    }

    FUNC5(FUNC0(port_num), port_cfg.u64);
    FUNC5(FUNC1(port_num), port_tag_cfg.u64);
}