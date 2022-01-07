
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state; } ;


 scalar_t__ DEV_STA_OPEN ;
 int UB_MAX_DEV ;
 TYPE_1__* devices ;

__attribute__((used)) static int
dev_valid(int handle)
{

 if (handle < 0 || handle >= UB_MAX_DEV)
  return (0);

 if (devices[handle].state != DEV_STA_OPEN)
  return (0);

 return (1);
}
