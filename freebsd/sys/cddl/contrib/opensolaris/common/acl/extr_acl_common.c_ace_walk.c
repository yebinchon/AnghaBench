
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_2__ {int a_access_mask; int a_type; int a_flags; } ;
typedef TYPE_1__ ace_t ;



uint64_t
ace_walk(void *datap, uint64_t cookie, int aclcnt, uint16_t *flags,
    uint16_t *type, uint32_t *mask)
{
 ace_t *acep = datap;

 if (cookie >= aclcnt)
  return (0);

 *flags = acep[cookie].a_flags;
 *type = acep[cookie].a_type;
 *mask = acep[cookie++].a_access_mask;

 return (cookie);
}
