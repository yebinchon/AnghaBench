
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct ath_hal {int dummy; } ;
struct ath_desc {int dummy; } ;
struct ar9300_txc {int ds_ctl17; } ;
typedef int HAL_KEY_TYPE ;
typedef int HAL_DMA_ADDR ;
typedef int HAL_BOOL ;


 struct ar9300_txc* AR9300TXC_CONST (struct ath_desc const*) ;
 int AR_encr_type ;
 int MS (int ,int ) ;
 int ar9300_fill_tx_desc (struct ath_hal*,struct ath_desc*,int *,int *,int ,int ,int ,int ,int ,struct ath_desc const*) ;

HAL_BOOL
ar9300_freebsd_fill_tx_desc(struct ath_hal *ah, struct ath_desc *ds,
    HAL_DMA_ADDR *bufListPtr, uint32_t *segLenPtr, u_int descId, u_int qid,
    HAL_BOOL firstSeg, HAL_BOOL lastSeg,
    const struct ath_desc *ds0)
{
 HAL_KEY_TYPE keyType = 0;
 const struct ar9300_txc *ads = AR9300TXC_CONST(ds0);







 keyType = MS(ads->ds_ctl17, AR_encr_type);

 return ar9300_fill_tx_desc(ah, ds, bufListPtr, segLenPtr, descId,
     qid, keyType, firstSeg, lastSeg, ds0);
}
