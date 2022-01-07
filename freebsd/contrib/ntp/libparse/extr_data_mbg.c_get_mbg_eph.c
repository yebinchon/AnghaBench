
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int L2flag; int L2code; int URA; int tgd; int af2; int af1; int af0; int cis; int cic; int cus; int cuc; int crs; int crc; int idot; int i0; int deltan; int OMEGADOT; int OMEGA0; int omega; int M0; int e; int sqrt_A; int t0e; int t0c; int tt; void* IODE3; void* IODE2; void* IODC; scalar_t__ health; int valid; scalar_t__ csum; } ;
typedef void* IOD ;
typedef scalar_t__ HEALTH ;
typedef TYPE_1__ EPH ;
typedef scalar_t__ CSUM ;


 int FETCH_DOUBLE (unsigned char**,int *) ;
 int get_lsb_int16 (unsigned char**) ;
 scalar_t__ get_lsb_short (unsigned char**) ;
 int get_lsb_uint16 (unsigned char**) ;
 int get_mbg_tgps (unsigned char**,int *) ;

void
get_mbg_eph(
 unsigned char ** buffpp,
 EPH *ephp
 )
{
  ephp->csum = (CSUM) get_lsb_short(buffpp);
  ephp->valid = get_lsb_int16(buffpp);

  ephp->health = (HEALTH) get_lsb_short(buffpp);
  ephp->IODC = (IOD) get_lsb_short(buffpp);
  ephp->IODE2 = (IOD) get_lsb_short(buffpp);
  ephp->IODE3 = (IOD) get_lsb_short(buffpp);

  get_mbg_tgps(buffpp, &ephp->tt);
  get_mbg_tgps(buffpp, &ephp->t0c);
  get_mbg_tgps(buffpp, &ephp->t0e);

  FETCH_DOUBLE(buffpp, &ephp->sqrt_A);
  FETCH_DOUBLE(buffpp, &ephp->e);
  FETCH_DOUBLE(buffpp, &ephp->M0);
  FETCH_DOUBLE(buffpp, &ephp->omega);
  FETCH_DOUBLE(buffpp, &ephp->OMEGA0);
  FETCH_DOUBLE(buffpp, &ephp->OMEGADOT);
  FETCH_DOUBLE(buffpp, &ephp->deltan);
  FETCH_DOUBLE(buffpp, &ephp->i0);
  FETCH_DOUBLE(buffpp, &ephp->idot);
  FETCH_DOUBLE(buffpp, &ephp->crc);
  FETCH_DOUBLE(buffpp, &ephp->crs);
  FETCH_DOUBLE(buffpp, &ephp->cuc);
  FETCH_DOUBLE(buffpp, &ephp->cus);
  FETCH_DOUBLE(buffpp, &ephp->cic);
  FETCH_DOUBLE(buffpp, &ephp->cis);

  FETCH_DOUBLE(buffpp, &ephp->af0);
  FETCH_DOUBLE(buffpp, &ephp->af1);
  FETCH_DOUBLE(buffpp, &ephp->af2);
  FETCH_DOUBLE(buffpp, &ephp->tgd);

  ephp->URA = get_lsb_uint16(buffpp);

  ephp->L2code = *(*buffpp)++;
  ephp->L2flag = *(*buffpp)++;
}
