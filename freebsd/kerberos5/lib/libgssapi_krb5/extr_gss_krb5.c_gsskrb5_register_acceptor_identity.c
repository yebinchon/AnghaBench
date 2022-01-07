
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; int value; } ;
typedef TYPE_1__ gss_buffer_desc ;
typedef int OM_uint32 ;


 int GSS_KRB5_REGISTER_ACCEPTOR_IDENTITY_X ;
 int GSS_S_COMPLETE ;
 int gss_set_sec_context_option (int *,int *,int ,TYPE_1__*) ;
 int rk_UNCONST (char const*) ;
 int strlen (char const*) ;

OM_uint32
gsskrb5_register_acceptor_identity(const char *identity)
{
 gss_buffer_desc buffer;
 OM_uint32 junk;

 buffer.value = rk_UNCONST(identity);
 buffer.length = strlen(identity);

 gss_set_sec_context_option(&junk, ((void*)0),
     GSS_KRB5_REGISTER_ACCEPTOR_IDENTITY_X, &buffer);

 return (GSS_S_COMPLETE);
}
