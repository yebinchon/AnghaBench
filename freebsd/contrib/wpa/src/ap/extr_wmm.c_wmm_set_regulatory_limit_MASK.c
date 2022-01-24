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
struct hostapd_wmm_rule {int /*<<< orphan*/  max_txop; int /*<<< orphan*/  min_aifs; int /*<<< orphan*/  min_cwmax; int /*<<< orphan*/  min_cwmin; } ;
struct hostapd_wmm_ac_params {int /*<<< orphan*/  admission_control_mandatory; int /*<<< orphan*/  txop_limit; void* aifs; void* cwmax; void* cwmin; } ;

/* Variables and functions */
 void* FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int WMM_AC_NUM ; 

__attribute__((used)) static void
FUNC2(const struct hostapd_wmm_ac_params *wmm_conf,
			 struct hostapd_wmm_ac_params *wmm,
			 const struct hostapd_wmm_rule *wmm_reg)
{
	int ac;

	for (ac = 0; ac < WMM_AC_NUM; ac++) {
		wmm[ac].cwmin = FUNC0(wmm_conf[ac].cwmin, wmm_reg[ac].min_cwmin);
		wmm[ac].cwmax = FUNC0(wmm_conf[ac].cwmax, wmm_reg[ac].min_cwmax);
		wmm[ac].aifs = FUNC0(wmm_conf[ac].aifs, wmm_reg[ac].min_aifs);
		wmm[ac].txop_limit =
			FUNC1(wmm_conf[ac].txop_limit, wmm_reg[ac].max_txop);
		wmm[ac].admission_control_mandatory =
			wmm_conf[ac].admission_control_mandatory;
	}
}