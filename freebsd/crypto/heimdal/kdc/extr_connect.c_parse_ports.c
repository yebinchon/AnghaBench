
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_kdc_configuration ;
typedef int krb5_context ;


 int AF_INET ;
 int AF_INET6 ;
 int add_port_string (int ,int ,char*,char*) ;
 int add_standard_ports (int ,int *,int ) ;
 int free (char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char const*) ;
 char* strtok_r (char*,char*,char**) ;

__attribute__((used)) static void
parse_ports(krb5_context context,
     krb5_kdc_configuration *config,
     const char *str)
{
    char *pos = ((void*)0);
    char *p;
    char *str_copy = strdup (str);

    p = strtok_r(str_copy, " \t", &pos);
    while(p != ((void*)0)) {
 if(strcmp(p, "+") == 0) {



     add_standard_ports(context, config, AF_INET);
 } else {
     char *q = strchr(p, '/');
     if(q){
  *q++ = 0;



  add_port_string(context, AF_INET, p, q);
     }else {




  add_port_string(context, AF_INET, p, "udp");
  add_port_string(context, AF_INET, p, "tcp");
     }
 }

 p = strtok_r(((void*)0), " \t", &pos);
    }
    free (str_copy);
}
