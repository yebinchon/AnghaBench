
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ lno; scalar_t__ cno; } ;
struct TYPE_10__ {scalar_t__ lno; scalar_t__ c_eboff; } ;
typedef TYPE_1__ SMAP ;
typedef TYPE_2__ SCR ;


 TYPE_1__* HMAP ;
 int SMAP_CACHE (TYPE_1__*) ;
 TYPE_1__* TMAP ;
 scalar_t__ vs_line (TYPE_2__*,TYPE_1__*,int *,int *) ;

int
vs_sm_cursor(SCR *sp, SMAP **smpp)
{
 SMAP *p;


 if (sp->lno < HMAP->lno || sp->lno > TMAP->lno)
  return (1);


 for (p = HMAP; p->lno != sp->lno; ++p);


 for (; p <= TMAP; ++p) {

  if (p != TMAP && (p + 1)->lno != p->lno) {
   *smpp = p;
   return (0);
  }
  if (!SMAP_CACHE(p) && vs_line(sp, p, ((void*)0), ((void*)0)))
   return (1);
  if (p->c_eboff >= sp->cno) {
   *smpp = p;
   return (0);
  }
 }


 return (1);
}
