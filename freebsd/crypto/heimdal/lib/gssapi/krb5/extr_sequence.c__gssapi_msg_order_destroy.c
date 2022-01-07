
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gss_msg_order {int dummy; } ;
typedef int OM_uint32 ;


 int GSS_S_COMPLETE ;
 int free (struct gss_msg_order*) ;

OM_uint32
_gssapi_msg_order_destroy(struct gss_msg_order **m)
{
    free(*m);
    *m = ((void*)0);
    return GSS_S_COMPLETE;
}
