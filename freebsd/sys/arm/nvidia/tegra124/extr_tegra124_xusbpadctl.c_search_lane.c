
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct padctl_softc {int dummy; } ;
struct padctl_lane {int name; } ;


 struct padctl_lane* lanes_tbl ;
 int nitems (struct padctl_lane*) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static struct padctl_lane *
search_lane(struct padctl_softc *sc, char *lane_name)
{
 int i;

 for (i = 0; i < nitems(lanes_tbl); i++) {
  if (strcmp(lane_name, lanes_tbl[i].name) == 0)
   return (lanes_tbl + i);
 }
 return (((void*)0));
}
