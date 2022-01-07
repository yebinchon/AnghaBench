
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int node_type; int numports; TYPE_1__** ports; } ;
typedef TYPE_2__ umad_ca_t ;
struct TYPE_5__ {int state; int phys_state; int link_layer; } ;


 int DEBUG (char*,int) ;
 int TRACE (char*,char const*) ;
 int release_ca (TYPE_2__*) ;
 scalar_t__ strcmp (int ,char*) ;
 scalar_t__ umad_get_ca (char const*,TYPE_2__*) ;

__attribute__((used)) static int resolve_ca_port(const char *ca_name, int *port)
{
 umad_ca_t ca;
 int active = -1, up = -1;
 int i, ret = 0;

 TRACE("checking ca '%s'", ca_name);

 if (umad_get_ca(ca_name, &ca) < 0)
  return -1;

 if (ca.node_type == 2) {
  *port = 0;
  ret = 1;
  goto Exit;
 }

 if (*port > 0) {
  if (*port > ca.numports) {
   ret = -1;
   goto Exit;
  }
  if (!ca.ports[*port]) {
   ret = -1;
   goto Exit;
  }
  if (strcmp(ca.ports[*port]->link_layer, "InfiniBand") &&
      strcmp(ca.ports[*port]->link_layer, "IB")) {
   ret = -1;
   goto Exit;
  }
  if (ca.ports[*port]->state == 4) {
   ret = 1;
   goto Exit;
  }
  if (ca.ports[*port]->phys_state != 3)
   goto Exit;
  ret = -1;
  goto Exit;
 }

 for (i = 0; i <= ca.numports; i++) {
  DEBUG("checking port %d", i);
  if (!ca.ports[i])
   continue;
  if (strcmp(ca.ports[i]->link_layer, "InfiniBand") &&
      strcmp(ca.ports[i]->link_layer, "IB"))
   continue;
  if (up < 0 && ca.ports[i]->phys_state == 5)
   up = *port = i;
  if (ca.ports[i]->state == 4) {
   active = *port = i;
   DEBUG("found active port %d", i);
   break;
  }
 }

 if (active == -1 && up == -1) {
  for (i = 0; i <= ca.numports; i++) {
   DEBUG("checking port %d", i);
   if (!ca.ports[i])
    continue;
   if (ca.ports[i]->phys_state != 3) {
    up = *port = i;
    break;
   }
  }
 }

 if (active >= 0) {
  ret = 1;
  goto Exit;
 }
 if (up >= 0) {
  ret = 0;
  goto Exit;
 }
 ret = -1;
Exit:
 release_ca(&ca);
 return ret;
}
