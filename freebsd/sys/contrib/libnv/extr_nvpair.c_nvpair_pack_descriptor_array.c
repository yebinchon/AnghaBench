
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int value ;
struct TYPE_5__ {scalar_t__ nvp_type; size_t nvp_datasize; unsigned int nvp_nitems; } ;
typedef TYPE_1__ nvpair_t ;
typedef int int64_t ;


 int NVPAIR_ASSERT (TYPE_1__ const*) ;
 scalar_t__ NV_TYPE_DESCRIPTOR_ARRAY ;
 int PJDLOG_ASSERT (int) ;
 int memcpy (unsigned char*,int*,int) ;
 int* nvpair_get_descriptor_array (TYPE_1__ const*,int *) ;

unsigned char *
nvpair_pack_descriptor_array(const nvpair_t *nvp, unsigned char *ptr,
    int64_t *fdidxp, size_t *leftp)
{
 int64_t value;
 const int *array;
 unsigned int ii;

 NVPAIR_ASSERT(nvp);
 PJDLOG_ASSERT(nvp->nvp_type == NV_TYPE_DESCRIPTOR_ARRAY);
 PJDLOG_ASSERT(*leftp >= nvp->nvp_datasize);

 array = nvpair_get_descriptor_array(nvp, ((void*)0));
 PJDLOG_ASSERT(array != ((void*)0));

 for (ii = 0; ii < nvp->nvp_nitems; ii++) {
  PJDLOG_ASSERT(*leftp >= sizeof(value));

  value = array[ii];
  if (value != -1) {





   PJDLOG_ASSERT(fdidxp != ((void*)0));

   value = *fdidxp;
   (*fdidxp)++;
  }
  memcpy(ptr, &value, sizeof(value));
  ptr += sizeof(value);
  *leftp -= sizeof(value);
 }

 return (ptr);
}
