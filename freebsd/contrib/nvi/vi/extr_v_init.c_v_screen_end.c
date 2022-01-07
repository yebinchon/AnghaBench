
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* ps; struct TYPE_8__* mcs; struct TYPE_8__* rep; struct TYPE_8__* keyw; } ;
typedef TYPE_1__ VI_PRIVATE ;
struct TYPE_9__ {int * vi_private; } ;
typedef TYPE_2__ SCR ;


 TYPE_1__* HMAP ;
 TYPE_1__* VIP (TYPE_2__*) ;
 int free (TYPE_1__*) ;

int
v_screen_end(SCR *sp)
{
 VI_PRIVATE *vip;

 if ((vip = VIP(sp)) == ((void*)0))
  return (0);
 if (vip->keyw != ((void*)0))
  free(vip->keyw);
 if (vip->rep != ((void*)0))
  free(vip->rep);
 if (vip->mcs != ((void*)0))
  free(vip->mcs);
 if (vip->ps != ((void*)0))
  free(vip->ps);

 if (HMAP != ((void*)0))
  free(HMAP);

 free(vip);
 sp->vi_private = ((void*)0);

 return (0);
}
