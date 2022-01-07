
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int usage; char const* name; } ;


 int errx (int,char*) ;
 int npages ;
 TYPE_1__* pages ;
 int sprintf (char*,char*,int) ;

const char *
hid_usage_page(int i)
{
 static char b[10];
 int k;

 if (!pages)
  errx(1, "no hid table");

 for (k = 0; k < npages; k++)
  if (pages[k].usage == i)
   return pages[k].name;
 sprintf(b, "0x%04x", i);
 return b;
}
