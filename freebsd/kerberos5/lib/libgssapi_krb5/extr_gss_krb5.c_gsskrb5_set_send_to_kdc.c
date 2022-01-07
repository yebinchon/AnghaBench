
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct gsskrb5_send_to_kdc {int dummy; } ;
struct TYPE_3__ {int length; struct gsskrb5_send_to_kdc* value; } ;
typedef TYPE_1__ gss_buffer_desc ;
typedef int OM_uint32 ;


 int GSS_KRB5_SEND_TO_KDC_X ;
 int GSS_S_COMPLETE ;
 int gss_set_sec_context_option (int *,int *,int ,TYPE_1__*) ;

OM_uint32
gsskrb5_set_send_to_kdc(struct gsskrb5_send_to_kdc *c)
{
    gss_buffer_desc buffer;
    OM_uint32 junk;

    if (c) {
 buffer.value = c;
 buffer.length = sizeof(*c);
    } else {
 buffer.value = ((void*)0);
 buffer.length = 0;
    }

    gss_set_sec_context_option(&junk, ((void*)0),
     GSS_KRB5_SEND_TO_KDC_X, &buffer);

    return (GSS_S_COMPLETE);
}
