
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ DEV_TYP_NET ;
 int dev_valid (int) ;
 TYPE_1__* devices ;

__attribute__((used)) static int
dev_net_valid(int handle)
{

 if (!dev_valid(handle))
  return (0);

 if (devices[handle].type != DEV_TYP_NET)
  return (0);

 return (1);
}
