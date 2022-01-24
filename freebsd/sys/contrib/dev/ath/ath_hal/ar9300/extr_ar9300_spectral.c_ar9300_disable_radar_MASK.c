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
typedef  int u_int32_t ;
struct ath_hal {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_RADAR_0 ; 
 int AR_PHY_RADAR_0_ENA ; 
 int AR_PHY_RADAR_0_FFT_ENA ; 
 int AR_PHY_RADAR_0_HEIGHT ; 
 int AR_PHY_RADAR_0_RRSSI ; 
 int /*<<< orphan*/  AR_PHY_RADAR_EXT ; 
 int AR_PHY_RADAR_EXT_ENA ; 
 int /*<<< orphan*/  AR_RX_FILTER ; 
 int /*<<< orphan*/  MAX_RADAR_HEIGHT ; 
 int /*<<< orphan*/  MAX_RADAR_RSSI_THRESH ; 
 int FUNC0 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 

void
FUNC3(struct ath_hal *ah)
{
    u_int32_t val;

    /* Enable radar FFT */
    val = FUNC0(ah, AR_PHY_RADAR_0);
    val |= AR_PHY_RADAR_0_FFT_ENA;

    /* set radar detect thresholds to max to effectively disable radar */
    val &= ~AR_PHY_RADAR_0_RRSSI;
    val |= FUNC2(MAX_RADAR_RSSI_THRESH, AR_PHY_RADAR_0_RRSSI);

    val &= ~AR_PHY_RADAR_0_HEIGHT;
    val |= FUNC2(MAX_RADAR_HEIGHT, AR_PHY_RADAR_0_HEIGHT);

    val &= ~(AR_PHY_RADAR_0_ENA);
    FUNC1(ah, AR_PHY_RADAR_0, val);

    /* disable extension radar detect */
    val = FUNC0(ah, AR_PHY_RADAR_EXT);
    FUNC1(ah, AR_PHY_RADAR_EXT, val & ~AR_PHY_RADAR_EXT_ENA);

    val = FUNC0(ah, AR_RX_FILTER);
    val |= (1 << 13);
    FUNC1(ah, AR_RX_FILTER, val);
}