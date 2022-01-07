
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* value; int length; } ;
typedef TYPE_1__ gss_buffer_desc ;
typedef int b ;
typedef int OM_uint32 ;


 int GSS_KRB5_SET_DNS_CANONICALIZE_X ;
 int GSS_S_COMPLETE ;
 int gss_set_sec_context_option (int *,int *,int ,TYPE_1__*) ;

OM_uint32
gsskrb5_set_dns_canonicalize(int flag)
{
 gss_buffer_desc buffer;
 OM_uint32 junk;
 char b = (flag != 0);

 buffer.value = &b;
 buffer.length = sizeof(b);

 gss_set_sec_context_option(&junk, ((void*)0),
     GSS_KRB5_SET_DNS_CANONICALIZE_X, &buffer);

 return (GSS_S_COMPLETE);
}
