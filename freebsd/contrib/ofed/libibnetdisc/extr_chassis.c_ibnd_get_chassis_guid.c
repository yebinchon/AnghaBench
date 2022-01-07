
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int ibnd_fabric_t ;
struct TYPE_3__ {int chassisguid; } ;
typedef TYPE_1__ ibnd_chassis_t ;


 int IBND_DEBUG (char*) ;
 TYPE_1__* find_chassisnum (int *,unsigned char) ;

uint64_t ibnd_get_chassis_guid(ibnd_fabric_t * fabric, unsigned char chassisnum)
{
 ibnd_chassis_t *chassis;

 if (!fabric) {
  IBND_DEBUG("fabric parameter NULL\n");
  return 0;
 }

 chassis = find_chassisnum(fabric, chassisnum);
 if (chassis)
  return chassis->chassisguid;
 else
  return 0;
}
