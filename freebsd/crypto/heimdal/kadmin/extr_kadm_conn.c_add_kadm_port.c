
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kadm_port {unsigned int def_port; struct kadm_port* next; int port; } ;
typedef int krb5_context ;


 struct kadm_port* kadm_ports ;
 int krb5_warnx (int ,char*,unsigned long) ;
 struct kadm_port* malloc (int) ;
 int strdup (char const*) ;

__attribute__((used)) static void
add_kadm_port(krb5_context contextp, const char *service, unsigned int port)
{
    struct kadm_port *p;
    p = malloc(sizeof(*p));
    if(p == ((void*)0)) {
 krb5_warnx(contextp, "failed to allocate %lu bytes\n",
     (unsigned long)sizeof(*p));
 return;
    }

    p->port = strdup(service);
    p->def_port = port;

    p->next = kadm_ports;
    kadm_ports = p;
}
