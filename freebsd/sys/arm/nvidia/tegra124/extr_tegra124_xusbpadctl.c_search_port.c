
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct padctl_softc {int dummy; } ;
struct padctl_port {int name; } ;


 int nitems (struct padctl_port*) ;
 struct padctl_port* ports_tbl ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static struct padctl_port *
search_port(struct padctl_softc *sc, char *port_name)
{
 int i;

 for (i = 0; i < nitems(ports_tbl); i++) {
  if (strcmp(port_name, ports_tbl[i].name) == 0)
   return (&ports_tbl[i]);
 }
 return (((void*)0));
}
