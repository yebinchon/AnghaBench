
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct interface {int int_state; scalar_t__ int_addr; int int_name; struct interface* int_nhash; } ;
typedef scalar_t__ naddr ;


 scalar_t__ IF_RESCAN_DELAY () ;
 int IS_ALIAS ;
 int ifinit () ;
 struct interface** nhash (char*) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static struct interface *
ifwithname(char *name,
    naddr addr)
{
 struct interface *ifp;

 for (;;) {
  for (ifp = *nhash(name); ifp != ((void*)0); ifp = ifp->int_nhash) {




   if (!strcmp(ifp->int_name, name)
       && ((addr == 0 && !(ifp->int_state & IS_ALIAS))
    || (ifp->int_addr == addr)))
    return ifp;
  }




  if (IF_RESCAN_DELAY())
   return 0;
  ifinit();
 }
}
