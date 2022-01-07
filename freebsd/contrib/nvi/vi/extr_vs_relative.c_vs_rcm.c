
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int recno_t ;
struct TYPE_5__ {scalar_t__ rcm; } ;
typedef TYPE_1__ SCR ;


 scalar_t__ db_get (TYPE_1__*,int ,int ,int *,size_t*) ;
 size_t vs_colpos (TYPE_1__*,int ,scalar_t__) ;

size_t
vs_rcm(SCR *sp, recno_t lno, int islast)
{
 size_t len;


 if (islast) {
  if (db_get(sp, lno, 0, ((void*)0), &len) || len == 0)
   return (0);
  return (len - 1);
 }


 if (sp->rcm == 0)
  return (0);

 return (vs_colpos(sp, lno, sp->rcm));
}
