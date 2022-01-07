
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ nvp_type; size_t nvp_datasize; unsigned int nvp_nitems; } ;
typedef TYPE_1__ nvpair_t ;


 int NVPAIR_ASSERT (TYPE_1__ const*) ;
 scalar_t__ NV_TYPE_STRING_ARRAY ;
 int PJDLOG_ASSERT (int) ;
 int memcpy (unsigned char*,void const*,size_t) ;
 char** nvpair_get_string_array (TYPE_1__ const*,int *) ;
 int strlen (char const* const) ;

unsigned char *
nvpair_pack_string_array(const nvpair_t *nvp, unsigned char *ptr, size_t *leftp)
{
 unsigned int ii;
 size_t size, len;
 const char * const *array;

 NVPAIR_ASSERT(nvp);
 PJDLOG_ASSERT(nvp->nvp_type == NV_TYPE_STRING_ARRAY);
 PJDLOG_ASSERT(*leftp >= nvp->nvp_datasize);

 size = 0;
 array = nvpair_get_string_array(nvp, ((void*)0));
 PJDLOG_ASSERT(array != ((void*)0));

 for (ii = 0; ii < nvp->nvp_nitems; ii++) {
  len = strlen(array[ii]) + 1;
  PJDLOG_ASSERT(*leftp >= len);

  memcpy(ptr, (const void *)array[ii], len);
  size += len;
  ptr += len;
  *leftp -= len;
 }

 PJDLOG_ASSERT(size == nvp->nvp_datasize);

 return (ptr);
}
