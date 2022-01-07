
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* gss_buffer_t ;
struct TYPE_4__ {scalar_t__ value; } ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_S_COMPLETE ;
 int _gss_buffer_zero (TYPE_1__*) ;
 int free (scalar_t__) ;

OM_uint32
gss_release_buffer(OM_uint32 *minor_status,
     gss_buffer_t buffer)
{

 *minor_status = 0;
 if (buffer->value)
  free(buffer->value);
 _gss_buffer_zero(buffer);

 return (GSS_S_COMPLETE);
}
