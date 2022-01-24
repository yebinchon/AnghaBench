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
typedef  int /*<<< orphan*/  u_int ;
struct ath_hal {int dummy; } ;
struct ath_desc {int dummy; } ;
struct ar9300_txc {int /*<<< orphan*/  ds_ctl13; } ;

/* Variables and functions */
 struct ar9300_txc* FUNC0 (struct ath_desc*) ; 
 int /*<<< orphan*/  AR_burst_dur ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(struct ath_hal *ah, struct ath_desc *ds,
    u_int burst_duration)
{
    struct ar9300_txc *ads = FUNC0(ds);

    ads->ds_ctl13 &= ~AR_burst_dur;
    ads->ds_ctl13 |= FUNC1(burst_duration, AR_burst_dur);
}