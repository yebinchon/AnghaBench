
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {scalar_t__ nvp_type; size_t nvp_nitems; scalar_t__ nvp_data; } ;
typedef TYPE_1__ nvpair_t ;


 int NVPAIR_ASSERT (TYPE_1__ const*) ;
 scalar_t__ NV_TYPE_NUMBER_ARRAY ;
 int PJDLOG_ASSERT (int) ;

const uint64_t *
nvpair_get_number_array(const nvpair_t *nvp, size_t *nitems)
{

 NVPAIR_ASSERT(nvp);
 PJDLOG_ASSERT(nvp->nvp_type == NV_TYPE_NUMBER_ARRAY);

 if (nitems != ((void*)0))
  *nitems = nvp->nvp_nitems;

 return ((const uint64_t *)(intptr_t)nvp->nvp_data);
}
