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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u_int ;
struct ath_hal {int dummy; } ;
struct ath_desc {int dummy; } ;
struct ar9300_txc {int /*<<< orphan*/  ds_ctl17; } ;
typedef  int /*<<< orphan*/  HAL_KEY_TYPE ;
typedef  int /*<<< orphan*/  HAL_DMA_ADDR ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 struct ar9300_txc* FUNC0 (struct ath_desc const*) ; 
 int /*<<< orphan*/  AR_encr_type ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,struct ath_desc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ath_desc const*) ; 

HAL_BOOL
FUNC3(struct ath_hal *ah, struct ath_desc *ds,
    HAL_DMA_ADDR *bufListPtr, uint32_t *segLenPtr, u_int descId, u_int qid,
    HAL_BOOL firstSeg, HAL_BOOL lastSeg,
    const struct ath_desc *ds0)
{
	HAL_KEY_TYPE keyType = 0;
	const struct ar9300_txc *ads = FUNC0(ds0);

	/*
	 * FreeBSD's HAL doesn't pass the keytype to fill_tx_desc();
	 * it's copied as part of the descriptor chaining.
	 *
	 * So, extract it from ds0.
	 */
	keyType = FUNC1(ads->ds_ctl17, AR_encr_type);

	return FUNC2(ah, ds, bufListPtr, segLenPtr, descId,
	    qid, keyType, firstSeg, lastSeg, ds0);
}