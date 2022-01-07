
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* gss_buffer_set_t ;
struct TYPE_6__ {size_t count; struct TYPE_6__* elements; } ;
typedef scalar_t__ OM_uint32 ;


 TYPE_1__* GSS_C_NO_BUFFER_SET ;
 scalar_t__ GSS_S_COMPLETE ;
 int free (TYPE_1__*) ;
 int gss_release_buffer (scalar_t__*,TYPE_1__*) ;

OM_uint32
gss_release_buffer_set(OM_uint32 * minor_status, gss_buffer_set_t *buffer_set)
{
 size_t i;
 OM_uint32 minor;

 *minor_status = 0;

 if (*buffer_set == GSS_C_NO_BUFFER_SET)
  return (GSS_S_COMPLETE);

 for (i = 0; i < (*buffer_set)->count; i++)
  gss_release_buffer(&minor, &((*buffer_set)->elements[i]));

 free((*buffer_set)->elements);

 (*buffer_set)->elements = ((void*)0);
 (*buffer_set)->count = 0;

 free(*buffer_set);
 *buffer_set = GSS_C_NO_BUFFER_SET;

 return (GSS_S_COMPLETE);
}
