
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_size_t ;


 int assert (int) ;

void
svn_temp_deserializer__resolve(const void *buffer, void **ptr)
{


  apr_size_t ptr_offset = *(apr_size_t *)ptr;
  if (ptr_offset)
    {

      const char *target = (const char *)buffer + ptr_offset;





      assert(target > (const char *)buffer);


      (*(const char **)ptr) = target;
    }
  else
    {


      *ptr = ((void*)0);
    }
}
