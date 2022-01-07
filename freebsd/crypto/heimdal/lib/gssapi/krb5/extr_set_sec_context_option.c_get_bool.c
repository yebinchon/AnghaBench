
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* gss_buffer_t ;
struct TYPE_3__ {int length; int * value; } ;
typedef int OM_uint32 ;


 int EINVAL ;
 int GSS_S_COMPLETE ;
 int GSS_S_FAILURE ;

__attribute__((used)) static OM_uint32
get_bool(OM_uint32 *minor_status,
  const gss_buffer_t value,
  int *flag)
{
    if (value->value == ((void*)0) || value->length != 1) {
 *minor_status = EINVAL;
 return GSS_S_FAILURE;
    }
    *flag = *((const char *)value->value) != 0;
    return GSS_S_COMPLETE;
}
