
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* gss_buffer_t ;
struct TYPE_3__ {int length; int value; } ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_UNAVAILABLE ;
 int memcpy (scalar_t__*,int ,int) ;

__attribute__((used)) static OM_uint32
get_int32(OM_uint32 *minor_status,
   const gss_buffer_t value,
   OM_uint32 *ret)
{
    *minor_status = 0;
    if (value == ((void*)0) || value->length == 0)
 *ret = 0;
    else if (value->length == sizeof(*ret))
 memcpy(ret, value->value, sizeof(*ret));
    else
 return GSS_S_UNAVAILABLE;

    return GSS_S_COMPLETE;
}
