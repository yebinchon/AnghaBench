
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int usage; int pagesize; TYPE_1__* page_contents; } ;
struct TYPE_3__ {int usage; char const* name; } ;


 int HID_PAGE (unsigned int) ;
 int HID_USAGE (unsigned int) ;
 char* fmtcheck (char const*,char*) ;
 int npages ;
 TYPE_2__* pages ;
 int sprintf (char*,char*,int) ;

const char *
hid_usage_in_page(unsigned int u)
{
 int page = HID_PAGE(u);
 int i = HID_USAGE(u);
 static char b[100];
 int j, k, us;

 for (k = 0; k < npages; k++)
  if (pages[k].usage == page)
   break;
 if (k >= npages)
  goto bad;
 for (j = 0; j < pages[k].pagesize; j++) {
  us = pages[k].page_contents[j].usage;
  if (us == -1) {
   sprintf(b,
       fmtcheck(pages[k].page_contents[j].name, "%d"),
       i);
   return b;
  }
  if (us == i)
   return pages[k].page_contents[j].name;
 }
 bad:
 sprintf(b, "0x%04x", i);
 return b;
}
