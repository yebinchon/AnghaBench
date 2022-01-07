
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
 char* malloc (int) ;
 int memcpy (char*,int ,int) ;

__attribute__((used)) static OM_uint32
get_string(OM_uint32 *minor_status,
    const gss_buffer_t value,
    char **str)
{
    if (value == ((void*)0) || value->length == 0) {
 *str = ((void*)0);
    } else {
 *str = malloc(value->length + 1);
 if (*str == ((void*)0)) {
     *minor_status = 0;
     return GSS_S_UNAVAILABLE;
 }
 memcpy(*str, value->value, value->length);
 (*str)[value->length] = '\0';
    }
    return GSS_S_COMPLETE;
}
