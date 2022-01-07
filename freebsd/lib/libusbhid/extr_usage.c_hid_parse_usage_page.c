
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int usage; int name; } ;


 int errx (int,char*) ;
 int npages ;
 TYPE_1__* pages ;
 scalar_t__ strcmp (int ,char const*) ;

int
hid_parse_usage_page(const char *name)
{
 int k;

 if (!pages)
  errx(1, "no hid table");

 for (k = 0; k < npages; k++)
  if (strcmp(pages[k].name, name) == 0)
   return pages[k].usage;
 return -1;
}
