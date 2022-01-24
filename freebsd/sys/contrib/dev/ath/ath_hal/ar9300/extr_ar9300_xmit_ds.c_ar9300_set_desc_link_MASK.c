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
struct ar9300_txc {int /*<<< orphan*/  ds_ctl10; int /*<<< orphan*/  ds_link; } ;

/* Variables and functions */
 struct ar9300_txc* FUNC0 (void*) ; 
 int /*<<< orphan*/  AR_tx_ptr_chk_sum ; 
 int /*<<< orphan*/  FUNC1 (struct ar9300_txc*) ; 

void
FUNC2(struct ath_hal *ah, void *ds, u_int32_t link)
{
    struct ar9300_txc *ads = FUNC0(ds);

    ads->ds_link = link;

    /* TODO - checksum is calculated twice for subframes
     * Once in filldesc and again when linked. Need to fix.
     */
    /* Fill in pointer checksum.  Preserve descriptor id */
    ads->ds_ctl10 &= ~AR_tx_ptr_chk_sum;
    ads->ds_ctl10 |= FUNC1(ads);
}