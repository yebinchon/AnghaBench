
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ath_hal {int dummy; } ;


 int AR_TIME_OUT ;
 int AR_TIME_OUT_ACK ;
 int MS (int ,int ) ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int ar9300_mac_to_usec (struct ath_hal*,int ) ;

u_int
ar9300_get_ack_timeout(struct ath_hal *ah)
{
    u_int clks = MS(OS_REG_READ(ah, AR_TIME_OUT), AR_TIME_OUT_ACK);
    return ar9300_mac_to_usec(ah, clks);
}
