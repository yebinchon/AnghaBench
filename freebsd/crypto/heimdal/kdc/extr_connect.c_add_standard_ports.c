
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ enable_kx509; } ;
typedef TYPE_1__ krb5_kdc_configuration ;
typedef int krb5_context ;


 int add_port_service (int ,int,char*,int,char*) ;
 scalar_t__ enable_http ;

__attribute__((used)) static void
add_standard_ports (krb5_context context,
      krb5_kdc_configuration *config,
      int family)
{
    add_port_service(context, family, "kerberos", 88, "udp");
    add_port_service(context, family, "kerberos", 88, "tcp");
    add_port_service(context, family, "kerberos-sec", 88, "udp");
    add_port_service(context, family, "kerberos-sec", 88, "tcp");
    if(enable_http)
 add_port_service(context, family, "http", 80, "tcp");
    if(config->enable_kx509) {
 add_port_service(context, family, "kca_service", 9878, "udp");
 add_port_service(context, family, "kca_service", 9878, "tcp");
    }

}
