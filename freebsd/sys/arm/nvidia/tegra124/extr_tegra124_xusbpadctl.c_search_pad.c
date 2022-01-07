
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct padctl_softc {int dummy; } ;
struct padctl_pad {int name; } ;


 int nitems (struct padctl_pad*) ;
 struct padctl_pad* pads_tbl ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static struct padctl_pad *
search_pad(struct padctl_softc *sc, char *pad_name)
{
 int i;

 for (i = 0; i < nitems(pads_tbl); i++) {
  if (strcmp(pad_name, pads_tbl[i].name) == 0)
   return (pads_tbl + i);
 }
 return (((void*)0));
}
