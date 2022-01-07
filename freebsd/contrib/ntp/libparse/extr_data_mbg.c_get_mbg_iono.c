
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int beta_3; int beta_2; int beta_1; int beta_0; int alpha_3; int alpha_2; int alpha_1; int alpha_0; int valid; scalar_t__ csum; } ;
typedef TYPE_1__ IONO ;
typedef scalar_t__ CSUM ;


 int FETCH_DOUBLE (unsigned char**,int *) ;
 int get_lsb_int16 (unsigned char**) ;
 scalar_t__ get_lsb_short (unsigned char**) ;

void
get_mbg_iono(
 unsigned char **buffpp,
 IONO *ionop
 )
{
  ionop->csum = (CSUM) get_lsb_short(buffpp);
  ionop->valid = get_lsb_int16(buffpp);

  FETCH_DOUBLE(buffpp, &ionop->alpha_0);
  FETCH_DOUBLE(buffpp, &ionop->alpha_1);
  FETCH_DOUBLE(buffpp, &ionop->alpha_2);
  FETCH_DOUBLE(buffpp, &ionop->alpha_3);

  FETCH_DOUBLE(buffpp, &ionop->beta_0);
  FETCH_DOUBLE(buffpp, &ionop->beta_1);
  FETCH_DOUBLE(buffpp, &ionop->beta_2);
  FETCH_DOUBLE(buffpp, &ionop->beta_3);
}
