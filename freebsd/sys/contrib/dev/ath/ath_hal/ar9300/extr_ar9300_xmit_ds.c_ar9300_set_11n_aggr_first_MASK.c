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
struct ar9300_txc {int ds_ctl12; int /*<<< orphan*/  ds_ctl17; } ;

/* Variables and functions */
 struct ar9300_txc* FUNC0 (struct ath_desc*) ; 
 int /*<<< orphan*/  AR_aggr_len ; 
 int AR_is_aggr ; 
 int AR_more_aggr ; 
 int /*<<< orphan*/  AR_pad_delim ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(struct ath_hal *ah, struct ath_desc *ds,
  u_int aggr_len, u_int num_delims)
{
    struct ar9300_txc *ads = FUNC0(ds);

    ads->ds_ctl12 |= (AR_is_aggr | AR_more_aggr);

    ads->ds_ctl17 &= ~AR_aggr_len;
    ads->ds_ctl17 &= ~AR_pad_delim;
    /* XXX should use a stack variable! */
    ads->ds_ctl17 |= FUNC1(aggr_len, AR_aggr_len);
    ads->ds_ctl17 |= FUNC1(num_delims, AR_pad_delim);
}