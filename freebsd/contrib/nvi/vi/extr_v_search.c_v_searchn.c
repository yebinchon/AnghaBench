
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VICMD ;
struct TYPE_4__ {int searchdir; } ;
typedef TYPE_1__ SCR ;


 int SEARCH_PARSE ;
 int v_search (TYPE_1__*,int *,int *,int ,int ,int ) ;

int
v_searchn(SCR *sp, VICMD *vp)
{
 return (v_search(sp, vp, ((void*)0), 0, SEARCH_PARSE, sp->searchdir));
}
