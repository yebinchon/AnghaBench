
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer {int type; int * f; } ;
typedef int * if_printer ;


 int DLT_PKTAP ;
 int DLT_USER2 ;
 struct printer* printers ;

if_printer
lookup_printer(int type)
{
 const struct printer *p;

 for (p = printers; p->f; ++p)
  if (type == p->type)
   return p->f;
 return ((void*)0);

}
