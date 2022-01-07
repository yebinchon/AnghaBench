
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct exact_info {char* loc; char* bus; TYPE_1__* dev; } ;
struct TYPE_2__ {int dd_flags; } ;


 int DF_ATTACHED_ONCE ;
 int devinfo_foreach_device_child (int ,int ,void*) ;
 int errx (int,char*,...) ;
 int exit (int ) ;
 int find_exact_dev ;
 scalar_t__ isdigit (char) ;
 int root ;
 int search_hints (char*,char*,char*) ;
 char* strdup (char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static void
find_nomatch(char *nomatch)
{
 char *bus, *pnpinfo, *tmp, *busnameunit;
 struct exact_info info;
 tmp = nomatch + strlen(nomatch) - 4;
 while (tmp > nomatch && strncmp(tmp, " on ", 4) != 0)
  tmp--;
 if (tmp == nomatch)
  errx(1, "No bus found in nomatch string: '%s'", nomatch);
 bus = tmp + 4;
 *tmp = '\0';
 busnameunit = strdup(bus);
 if (busnameunit == ((void*)0))
  errx(1, "Can't allocate memory for strings");
 tmp = bus + strlen(bus) - 1;
 while (tmp > bus && isdigit(*tmp))
  tmp--;
 *++tmp = '\0';






 if (*nomatch == '?')
  nomatch++;
 if (strncmp(nomatch, " at ", 4) != 0)
  errx(1, "Malformed NOMATCH string: '%s'", nomatch);
 pnpinfo = nomatch + 4;






 info.loc = pnpinfo;
 info.bus = busnameunit;
 info.dev = ((void*)0);
 devinfo_foreach_device_child(root, find_exact_dev, (void *)&info);
 if (info.dev != ((void*)0) && info.dev->dd_flags & DF_ATTACHED_ONCE)
  exit(0);
 search_hints(bus, "", pnpinfo);

 exit(0);
}
