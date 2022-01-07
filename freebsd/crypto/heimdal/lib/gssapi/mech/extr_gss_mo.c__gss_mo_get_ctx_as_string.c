
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ctx; } ;
typedef TYPE_1__ gss_mo_desc ;
typedef int gss_const_OID ;
typedef TYPE_2__* gss_buffer_t ;
struct TYPE_6__ {int length; int * value; } ;


 int GSS_S_COMPLETE ;
 int GSS_S_FAILURE ;
 int * strdup (char*) ;
 int strlen (char*) ;

int
_gss_mo_get_ctx_as_string(gss_const_OID mech, gss_mo_desc *mo, gss_buffer_t value)
{
    if (value) {
 value->value = strdup((char *)mo->ctx);
 if (value->value == ((void*)0))
     return GSS_S_FAILURE;
 value->length = strlen((char *)mo->ctx);
    }
    return GSS_S_COMPLETE;
}
