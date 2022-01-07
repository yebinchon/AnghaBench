
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * health; int * cfg; int t0a; int tot_63; int tot_51; int valid; scalar_t__ csum; } ;
typedef scalar_t__ CSUM ;
typedef TYPE_1__ CFGH ;


 int N_SVNO_GPS ;
 int get_lsb_int16 (unsigned char**) ;
 scalar_t__ get_lsb_short (unsigned char**) ;
 int get_mbg_cfg (unsigned char**,int *) ;
 int get_mbg_health (unsigned char**,int *) ;
 int get_mbg_tgps (unsigned char**,int *) ;

void
get_mbg_cfgh(
 unsigned char **buffpp,
 CFGH *cfghp
 )
{
  int i;

  cfghp->csum = (CSUM) get_lsb_short(buffpp);
  cfghp->valid = get_lsb_int16(buffpp);
  get_mbg_tgps(buffpp, &cfghp->tot_51);
  get_mbg_tgps(buffpp, &cfghp->tot_63);
  get_mbg_tgps(buffpp, &cfghp->t0a);

  for (i = 0; i < N_SVNO_GPS; i++)
    {
      get_mbg_cfg(buffpp, &cfghp->cfg[i]);
    }

  for (i = 0; i < N_SVNO_GPS; i++)
    {
      get_mbg_health(buffpp, &cfghp->health[i]);
    }
}
