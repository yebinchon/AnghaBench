
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int p ;
typedef int krb5_context ;


 int add_kadm_port (int ,char*,int ) ;
 int add_standard_ports (int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int strsep_copy (char const**,char*,char*,int) ;

void
parse_ports(krb5_context contextp, const char *str)
{
    char p[128];

    while(strsep_copy(&str, " \t", p, sizeof(p)) != -1) {
 if(strcmp(p, "+") == 0)
     add_standard_ports(contextp);
 else
     add_kadm_port(contextp, p, 0);
    }
}
