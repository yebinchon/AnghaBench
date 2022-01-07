
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct padctl_softc {int dummy; } ;
struct padctl_lane {int idx; TYPE_1__* pad; int enabled; } ;
typedef enum padctl_pad_type { ____Placeholder_padctl_pad_type } padctl_pad_type ;
struct TYPE_2__ {int type; } ;


 struct padctl_lane* lanes_tbl ;
 int nitems (struct padctl_lane*) ;

__attribute__((used)) static struct padctl_lane *
search_pad_lane(struct padctl_softc *sc, enum padctl_pad_type type, int idx)
{
 int i;

 for (i = 0; i < nitems(lanes_tbl); i++) {
  if (!lanes_tbl[i].enabled)
   continue;
  if (type == lanes_tbl[i].pad->type && idx == lanes_tbl[i].idx)
   return (lanes_tbl + i);
 }
 return (((void*)0));
}
