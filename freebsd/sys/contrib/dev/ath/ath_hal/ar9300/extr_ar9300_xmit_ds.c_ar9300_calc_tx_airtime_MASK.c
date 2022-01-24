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
typedef  int u_int8_t ;
typedef  int u_int32_t ;
struct ath_tx_status {int ts_longretry; int ts_flags; int ts_finaltsi; } ;
struct ath_hal {int dummy; } ;
struct ar9300_txc {int /*<<< orphan*/  ds_ctl15; int /*<<< orphan*/  ds_ctl13; int /*<<< orphan*/  ds_ctl16; } ;
typedef  scalar_t__ HAL_BOOL ;

/* Variables and functions */
 struct ar9300_txc* FUNC0 (void*) ; 
 int /*<<< orphan*/  AR_packet_dur0 ; 
 int /*<<< orphan*/  AR_packet_dur1 ; 
 int /*<<< orphan*/  AR_packet_dur2 ; 
 int /*<<< orphan*/  AR_packet_dur3 ; 
 int /*<<< orphan*/  AR_xmit_data_tries0 ; 
 int /*<<< orphan*/  AR_xmit_data_tries1 ; 
 int /*<<< orphan*/  AR_xmit_data_tries2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int HAL_TX_BA ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

u_int32_t
FUNC3(struct ath_hal *ah, void *ds, struct ath_tx_status *ts, 
        HAL_BOOL comp_wastedt, u_int8_t nbad, u_int8_t nframes )
{
    struct ar9300_txc *ads = FUNC0(ds);
    int finalindex_tries;
    u_int32_t airtime, lastrate_dur;
    

    /*
     * Number of attempts made on the final index
     * Note: If no BA was recv, then the data_fail_cnt is the number of tries
     * made on the final index.  If BA was recv, then add 1 to account for the
     * successful attempt.
     */
    if ( !comp_wastedt ){
        finalindex_tries = ts->ts_longretry + (ts->ts_flags & HAL_TX_BA)? 1 : 0;
    } else {
        finalindex_tries = ts->ts_longretry ;
    }

    /*
     * Calculate time of transmit on air for packet including retries
     * at different rates.
     */
    switch (ts->ts_finaltsi) {
    case 0:
        lastrate_dur = FUNC2(ads->ds_ctl15, AR_packet_dur0);
        airtime = (lastrate_dur * finalindex_tries);
        break;
    case 1:
        lastrate_dur = FUNC2(ads->ds_ctl15, AR_packet_dur1);
        airtime = (lastrate_dur * finalindex_tries) +
            (FUNC2(ads->ds_ctl13, AR_xmit_data_tries0) *
             FUNC2(ads->ds_ctl15, AR_packet_dur0));
        break;
    case 2:
        lastrate_dur = FUNC2(ads->ds_ctl16, AR_packet_dur2);
        airtime = (lastrate_dur * finalindex_tries) +
            (FUNC2(ads->ds_ctl13, AR_xmit_data_tries1) *
             FUNC2(ads->ds_ctl15, AR_packet_dur1)) +
            (FUNC2(ads->ds_ctl13, AR_xmit_data_tries0) *
             FUNC2(ads->ds_ctl15, AR_packet_dur0));
        break;
    case 3:
        lastrate_dur = FUNC2(ads->ds_ctl16, AR_packet_dur3);
        airtime = (lastrate_dur * finalindex_tries) +
            (FUNC2(ads->ds_ctl13, AR_xmit_data_tries2) *
             FUNC2(ads->ds_ctl16, AR_packet_dur2)) +
            (FUNC2(ads->ds_ctl13, AR_xmit_data_tries1) *
             FUNC2(ads->ds_ctl15, AR_packet_dur1)) +
            (FUNC2(ads->ds_ctl13, AR_xmit_data_tries0) *
             FUNC2(ads->ds_ctl15, AR_packet_dur0));
        break;
    default:
        FUNC1(0);
        return 0;
    }

    if ( comp_wastedt && (ts->ts_flags & HAL_TX_BA)){
        airtime += nbad?((lastrate_dur*nbad) / nframes):0;  
    }
    return airtime;

}