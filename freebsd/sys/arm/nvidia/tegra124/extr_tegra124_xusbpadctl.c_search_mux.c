
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct padctl_softc {int dummy; } ;
struct padctl_lane {int nmux; int * mux; } ;


 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static int
search_mux(struct padctl_softc *sc, struct padctl_lane *lane, char *fnc_name)
{
 int i;

 for (i = 0; i < lane->nmux; i++) {
  if (strcmp(fnc_name, lane->mux[i]) == 0)
   return (i);
 }
 return (-1);
}
