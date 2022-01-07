
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int value ;
struct TYPE_4__ {scalar_t__ nvp_type; scalar_t__ nvp_data; } ;
typedef TYPE_1__ nvpair_t ;
typedef int int64_t ;


 int NVPAIR_ASSERT (TYPE_1__ const*) ;
 scalar_t__ NV_TYPE_DESCRIPTOR ;
 int PJDLOG_ASSERT (int) ;
 int memcpy (unsigned char*,int*,int) ;

unsigned char *
nvpair_pack_descriptor(const nvpair_t *nvp, unsigned char *ptr, int64_t *fdidxp,
    size_t *leftp)
{
 int64_t value;

 NVPAIR_ASSERT(nvp);
 PJDLOG_ASSERT(nvp->nvp_type == NV_TYPE_DESCRIPTOR);

 value = (int64_t)nvp->nvp_data;
 if (value != -1) {





  PJDLOG_ASSERT(fdidxp != ((void*)0));

  value = *fdidxp;
  (*fdidxp)++;
 }

 PJDLOG_ASSERT(*leftp >= sizeof(value));
 memcpy(ptr, &value, sizeof(value));
 ptr += sizeof(value);
 *leftp -= sizeof(value);

 return (ptr);
}
