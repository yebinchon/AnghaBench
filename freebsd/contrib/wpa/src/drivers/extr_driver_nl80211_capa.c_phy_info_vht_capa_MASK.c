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
struct hostapd_hw_modes {int /*<<< orphan*/  vht_mcs_set; int /*<<< orphan*/  vht_capab; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr*) ; 
 int FUNC2 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(struct hostapd_hw_modes *mode,
			      struct nlattr *capa,
			      struct nlattr *mcs_set)
{
	if (capa)
		mode->vht_capab = FUNC1(capa);

	if (mcs_set && FUNC2(mcs_set) >= 8) {
		u8 *mcs;
		mcs = FUNC0(mcs_set);
		FUNC3(mode->vht_mcs_set, mcs, 8);
	}
}