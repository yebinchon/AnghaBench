
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pagesize; int usage; TYPE_1__* page_contents; int name; } ;
struct TYPE_3__ {int usage; int name; } ;


 int npages ;
 TYPE_2__* pages ;
 char* strchr (char const*,char) ;
 scalar_t__ strcmp (int ,char const*) ;
 scalar_t__ strncmp (int ,char const*,unsigned int) ;

int
hid_parse_usage_in_page(const char *name)
{
 const char *sep;
 int k, j;
 unsigned int l;

 sep = strchr(name, ':');
 if (sep == ((void*)0))
  return -1;
 l = sep - name;
 for (k = 0; k < npages; k++)
  if (strncmp(pages[k].name, name, l) == 0)
   goto found;
 return -1;
 found:
 sep++;
 for (j = 0; j < pages[k].pagesize; j++)
  if (strcmp(pages[k].page_contents[j].name, sep) == 0)
   return (pages[k].usage << 16) | pages[k].page_contents[j].usage;
 return (-1);
}
