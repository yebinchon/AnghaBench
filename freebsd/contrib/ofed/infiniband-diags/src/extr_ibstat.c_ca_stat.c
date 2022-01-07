
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t node_type; int numports; char* ca_name; int * ports; } ;
typedef TYPE_1__ umad_ca_t ;


 int IBWARN (char*,char*,char*,int,int) ;
 unsigned int IB_NODE_MAX ;
 int ca_dump (TYPE_1__*) ;
 char** node_type_str ;
 int port_dump (int ,int) ;
 int printf (char*,char*,char*) ;
 int umad_get_ca (char*,TYPE_1__*) ;

__attribute__((used)) static int ca_stat(char *ca_name, int portnum, int no_ports)
{
 umad_ca_t ca;
 int r;

 if ((r = umad_get_ca(ca_name, &ca)) < 0)
  return r;

 if (!ca.node_type)
  return 0;

 if (!no_ports && portnum >= 0) {
  if (portnum > ca.numports || !ca.ports[portnum]) {
   IBWARN("%s: '%s' has no port number %d - max (%d)",
          ((unsigned)ca.node_type <=
    IB_NODE_MAX ? node_type_str[ca.node_type] :
    "???"), ca_name, portnum, ca.numports);
   return -1;
  }
  printf("%s: '%s'\n",
         ((unsigned)ca.node_type <=
   IB_NODE_MAX ? node_type_str[ca.node_type] : "???"),
         ca.ca_name);
  port_dump(ca.ports[portnum], 1);
  return 0;
 }


 ca_dump(&ca);

 if (no_ports)
  return 0;

 for (portnum = 0; portnum <= ca.numports; portnum++)
  port_dump(ca.ports[portnum], 0);

 return 0;
}
