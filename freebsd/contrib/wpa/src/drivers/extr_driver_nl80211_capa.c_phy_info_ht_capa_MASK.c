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
struct nlattr {int dummy; } ;
struct hostapd_hw_modes {int a_mpdu_params; int /*<<< orphan*/  mcs_set; int /*<<< orphan*/  ht_capab; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr*) ; 
 int FUNC2 (struct nlattr*) ; 
 int FUNC3 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(struct hostapd_hw_modes *mode, struct nlattr *capa,
			     struct nlattr *ampdu_factor,
			     struct nlattr *ampdu_density,
			     struct nlattr *mcs_set)
{
	if (capa)
		mode->ht_capab = FUNC1(capa);

	if (ampdu_factor)
		mode->a_mpdu_params |= FUNC2(ampdu_factor) & 0x03;

	if (ampdu_density)
		mode->a_mpdu_params |= FUNC2(ampdu_density) << 2;

	if (mcs_set && FUNC3(mcs_set) >= 16) {
		u8 *mcs;
		mcs = FUNC0(mcs_set);
		FUNC4(mode->mcs_set, mcs, 16);
	}
}