
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* gss_buffer_t ;
struct TYPE_3__ {scalar_t__ length; int * value; } ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_S_COMPLETE ;
 int free (int *) ;

OM_uint32 _gsskrb5_release_buffer
           (OM_uint32 * minor_status,
            gss_buffer_t buffer
           )
{
  *minor_status = 0;
  free (buffer->value);
  buffer->value = ((void*)0);
  buffer->length = 0;
  return GSS_S_COMPLETE;
}
