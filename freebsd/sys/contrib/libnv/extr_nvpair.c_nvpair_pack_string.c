
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nvp_type; size_t nvp_datasize; scalar_t__ nvp_data; } ;
typedef TYPE_1__ nvpair_t ;


 int NVPAIR_ASSERT (TYPE_1__ const*) ;
 scalar_t__ NV_TYPE_STRING ;
 int PJDLOG_ASSERT (int) ;
 int memcpy (unsigned char*,void const*,size_t) ;

unsigned char *
nvpair_pack_string(const nvpair_t *nvp, unsigned char *ptr, size_t *leftp)
{

 NVPAIR_ASSERT(nvp);
 PJDLOG_ASSERT(nvp->nvp_type == NV_TYPE_STRING);

 PJDLOG_ASSERT(*leftp >= nvp->nvp_datasize);
 memcpy(ptr, (const void *)(intptr_t)nvp->nvp_data, nvp->nvp_datasize);
 ptr += nvp->nvp_datasize;
 *leftp -= nvp->nvp_datasize;

 return (ptr);
}
