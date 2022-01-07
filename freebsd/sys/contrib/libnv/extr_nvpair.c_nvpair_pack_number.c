
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int value ;
typedef scalar_t__ uint64_t ;
struct TYPE_4__ {scalar_t__ nvp_type; scalar_t__ nvp_data; } ;
typedef TYPE_1__ nvpair_t ;


 int NVPAIR_ASSERT (TYPE_1__ const*) ;
 scalar_t__ NV_TYPE_NUMBER ;
 int PJDLOG_ASSERT (int) ;
 int memcpy (unsigned char*,scalar_t__*,int) ;

unsigned char *
nvpair_pack_number(const nvpair_t *nvp, unsigned char *ptr, size_t *leftp)
{
 uint64_t value;

 NVPAIR_ASSERT(nvp);
 PJDLOG_ASSERT(nvp->nvp_type == NV_TYPE_NUMBER);

 value = (uint64_t)nvp->nvp_data;

 PJDLOG_ASSERT(*leftp >= sizeof(value));
 memcpy(ptr, &value, sizeof(value));
 ptr += sizeof(value);
 *leftp -= sizeof(value);

 return (ptr);
}
