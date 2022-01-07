
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int af1; int af0; int deltai; int OMEGADOT; int OMEGA0; int omega; int M0; int e; int sqrt_A; int t0a; scalar_t__ health; int valid; scalar_t__ csum; } ;
typedef scalar_t__ HEALTH ;
typedef scalar_t__ CSUM ;
typedef TYPE_1__ ALM ;


 int FETCH_DOUBLE (unsigned char**,int *) ;
 int get_lsb_int16 (unsigned char**) ;
 scalar_t__ get_lsb_short (unsigned char**) ;
 int get_mbg_tgps (unsigned char**,int *) ;

void
get_mbg_alm(
 unsigned char **buffpp,
 ALM *almp
 )
{
  almp->csum = (CSUM) get_lsb_short(buffpp);
  almp->valid = get_lsb_int16(buffpp);

  almp->health = (HEALTH) get_lsb_short(buffpp);
  get_mbg_tgps(buffpp, &almp->t0a);


  FETCH_DOUBLE(buffpp, &almp->sqrt_A);
  FETCH_DOUBLE(buffpp, &almp->e);

  FETCH_DOUBLE(buffpp, &almp->M0);
  FETCH_DOUBLE(buffpp, &almp->omega);
  FETCH_DOUBLE(buffpp, &almp->OMEGA0);
  FETCH_DOUBLE(buffpp, &almp->OMEGADOT);
  FETCH_DOUBLE(buffpp, &almp->deltai);
  FETCH_DOUBLE(buffpp, &almp->af0);
  FETCH_DOUBLE(buffpp, &almp->af1);
}
