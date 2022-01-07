
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_context ;


 int add_port (int ,int,int,char const*) ;
 int krb5_getportbyname (int ,char const*,char const*,int) ;

__attribute__((used)) static void
add_port_service(krb5_context context,
   int family, const char *service, int port,
   const char *protocol)
{
    port = krb5_getportbyname (context, service, protocol, port);
    add_port (context, family, port, protocol);
}
