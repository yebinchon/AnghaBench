
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cnt; int* p; } ;
struct TYPE_5__ {scalar_t__ lid; TYPE_1__ drpath; } ;
typedef TYPE_2__ ib_portid_t ;



int portid2portnum(ib_portid_t * portid)
{
 if (portid->lid > 0)
  return -1;

 if (portid->drpath.cnt == 0)
  return 0;

 return portid->drpath.p[(portid->drpath.cnt - 1)];
}
