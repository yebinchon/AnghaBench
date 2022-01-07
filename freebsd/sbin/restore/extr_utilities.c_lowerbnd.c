
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {scalar_t__ e_type; int e_flags; } ;
typedef scalar_t__ ino_t ;


 int EXTRACT ;
 int NEW ;
 scalar_t__ NODE ;
 struct entry* lookupino (scalar_t__) ;
 scalar_t__ maxino ;

ino_t
lowerbnd(ino_t start)
{
 struct entry *ep;

 for ( ; start < maxino; start++) {
  ep = lookupino(start);
  if (ep == ((void*)0) || ep->e_type == NODE)
   continue;
  if (ep->e_flags & (NEW|EXTRACT))
   return (start);
 }
 return (start);
}
