
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_context ;


 int add_kadm_port (int ,char*,int) ;

__attribute__((used)) static void
add_standard_ports (krb5_context contextp)
{
    add_kadm_port(contextp, "kerberos-adm", 749);
}
