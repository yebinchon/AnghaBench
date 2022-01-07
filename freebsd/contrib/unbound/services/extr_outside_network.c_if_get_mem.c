
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct port_if {int avail_total; int maxout; int inuse; TYPE_1__** out; } ;
struct port_comm {int dummy; } ;
struct TYPE_2__ {int cp; } ;


 scalar_t__ comm_point_get_mem (int ) ;

__attribute__((used)) static size_t
if_get_mem(struct port_if* pif)
{
 size_t s;
 int i;
 s = sizeof(*pif) + sizeof(int)*pif->avail_total +
  sizeof(struct port_comm*)*pif->maxout;
 for(i=0; i<pif->inuse; i++)
  s += sizeof(*pif->out[i]) +
   comm_point_get_mem(pif->out[i]->cp);
 return s;
}
