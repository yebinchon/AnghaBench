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
typedef  int /*<<< orphan*/  u_int32_t ;
struct ath_hal {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PCU_ALWAYS_PERFORM_KEYSEARCH ; 
 int /*<<< orphan*/  AR_PCU_MISC ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(struct ath_hal *ah, int enable)
{
    u_int32_t val;

    if (!ah) {
        return;
    }
    val = FUNC0(ah, AR_PCU_MISC);
    if (enable) {
        val |= AR_PCU_ALWAYS_PERFORM_KEYSEARCH;
    } else {
        val &= ~AR_PCU_ALWAYS_PERFORM_KEYSEARCH;
    }
    FUNC1(ah, AR_PCU_MISC, val);
}