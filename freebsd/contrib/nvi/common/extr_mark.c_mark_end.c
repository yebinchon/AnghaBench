
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int marks; } ;
typedef int SCR ;
typedef int LMARK ;
typedef TYPE_1__ EXF ;


 int * SLIST_FIRST (int ) ;
 int SLIST_REMOVE_HEAD (int ,int ) ;
 int free (int *) ;
 int q ;

int
mark_end(
 SCR *sp,
 EXF *ep)
{
 LMARK *lmp;





 while ((lmp = SLIST_FIRST(ep->marks)) != ((void*)0)) {
  SLIST_REMOVE_HEAD(ep->marks, q);
  free(lmp);
 }
 return (0);
}
