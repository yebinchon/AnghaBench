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
struct ath_hal {int dummy; } ;
struct ar9300_txc {int ds_ctl12; } ;

/* Variables and functions */
 struct ar9300_txc* FUNC0 (void*) ; 
 int AR_more_rifs ; 
 int AR_no_ack ; 

void
FUNC1(struct ath_hal *ah, void *ds)
{
    struct ar9300_txc *ads = FUNC0(ds);

    ads->ds_ctl12 |= AR_more_rifs | AR_no_ack;
}