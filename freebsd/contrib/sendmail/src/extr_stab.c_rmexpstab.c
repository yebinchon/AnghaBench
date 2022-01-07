
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_10__ {int * mac_rpool; } ;
struct TYPE_11__ {int * mci_rpool; TYPE_3__ mci_macro; int mci_sasl_string; int mci_tolist; int mci_host; int mci_heloname; int mci_rstatus; int mci_status; } ;
struct TYPE_9__ {int nc_cname; int nc_exp; } ;
struct TYPE_8__ {int hs_sig; int hs_exp; } ;
struct TYPE_12__ {int s_symtype; struct TYPE_12__* s_next; int s_name; TYPE_4__ s_mci; TYPE_2__ s_namecanon; TYPE_1__ s_hostsig; } ;
typedef TYPE_5__ STAB ;


 int SM_STAB_FREE (int ) ;
 int STABSIZE ;

 int ST_MCI ;

 TYPE_5__** SymTab ;
 int curtime () ;
 int sm_free (TYPE_5__*) ;
 int sm_rpool_free (int *) ;

void
rmexpstab()
{
 int i;
 STAB *s, *p, *f;
 time_t now;

 now = curtime();
 for (i = 0; i < STABSIZE; i++)
 {
  p = ((void*)0);
  s = SymTab[i];
  while (s != ((void*)0))
  {
   switch (s->s_symtype)
   {
     case 129:
    if (s->s_hostsig.hs_exp >= now)
     goto next;
    SM_STAB_FREE(s->s_hostsig.hs_sig);
    break;

     case 128:
    if (s->s_namecanon.nc_exp >= now)
     goto next;
    SM_STAB_FREE(s->s_namecanon.nc_cname);
    break;

     default:
    if (s->s_symtype >= ST_MCI)
    {

     SM_STAB_FREE(s->s_mci.mci_status);
     SM_STAB_FREE(s->s_mci.mci_rstatus);
     SM_STAB_FREE(s->s_mci.mci_heloname);
     if (s->s_mci.mci_rpool != ((void*)0))
     {
      sm_rpool_free(s->s_mci.mci_rpool);
      s->s_mci.mci_macro.mac_rpool = ((void*)0);
      s->s_mci.mci_rpool = ((void*)0);
     }
     break;
    }
  next:
    p = s;
    s = s->s_next;
    continue;
   }


   SM_STAB_FREE(s->s_name);
   f = s;
   s = s->s_next;
   sm_free(f);
   if (p == ((void*)0))
    SymTab[i] = s;
   else
    p->s_next = s;
  }
 }
}
