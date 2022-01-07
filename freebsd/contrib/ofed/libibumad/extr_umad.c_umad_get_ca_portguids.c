
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int numports; TYPE_1__** ports; } ;
typedef TYPE_2__ umad_ca_t ;
typedef int __be64 ;
struct TYPE_5__ {int port_guid; } ;


 int DEBUG (char*,char const*,int) ;
 int ENODEV ;
 int ENOMEM ;
 int TRACE (char*,char const*,int) ;
 int htobe64 (int ) ;
 int release_ca (TYPE_2__*) ;
 char* resolve_ca_name (char const*,int *) ;
 scalar_t__ umad_get_ca (char const*,TYPE_2__*) ;

int umad_get_ca_portguids(const char *ca_name, __be64 *portguids, int max)
{
 umad_ca_t ca;
 int ports = 0, i;

 TRACE("ca name %s max port guids %d", ca_name, max);
 if (!(ca_name = resolve_ca_name(ca_name, ((void*)0))))
  return -ENODEV;

 if (umad_get_ca(ca_name, &ca) < 0)
  return -1;

 if (portguids) {
  if (ca.numports + 1 > max) {
   release_ca(&ca);
   return -ENOMEM;
  }

  for (i = 0; i <= ca.numports; i++)
   portguids[ports++] = ca.ports[i] ?
    ca.ports[i]->port_guid : htobe64(0);
 }

 release_ca(&ca);
 DEBUG("%s: %d ports", ca_name, ports);

 return ports;
}
