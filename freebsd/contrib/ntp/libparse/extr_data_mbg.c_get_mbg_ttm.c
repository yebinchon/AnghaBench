
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tm; int t; int channel; } ;
typedef TYPE_1__ TTM ;


 int get_lsb_int16 (unsigned char**) ;
 int get_mbg_tgps (unsigned char**,int *) ;
 int get_mbg_tm (unsigned char**,int *) ;

void
get_mbg_ttm(
 unsigned char **buffpp,
 TTM *ttmp
 )
{
  ttmp->channel = get_lsb_int16(buffpp);
  get_mbg_tgps(buffpp, &ttmp->t);
  get_mbg_tm(buffpp, &ttmp->tm);
}
