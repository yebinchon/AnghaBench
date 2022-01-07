
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct peer {scalar_t__ refid; int srcadr; TYPE_1__* dstadr; } ;
struct TYPE_3__ {int flags; scalar_t__ addr_refid; } ;
typedef TYPE_1__ endpt ;


 int FALSE ;
 int INT_MCASTIF ;
 int TRUE ;
 TYPE_1__* findinterface (int *) ;

__attribute__((used)) static int
local_refid(
 struct peer * p
 )
{
 endpt * unicast_ep;

 if (p->dstadr != ((void*)0) && !(INT_MCASTIF & p->dstadr->flags))
  unicast_ep = p->dstadr;
 else
  unicast_ep = findinterface(&p->srcadr);

 if (unicast_ep != ((void*)0) && p->refid == unicast_ep->addr_refid)
  return TRUE;
 else
  return FALSE;
}
