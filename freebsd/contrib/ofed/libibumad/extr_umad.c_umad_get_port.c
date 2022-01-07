
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umad_port_t ;
typedef int dir_name ;


 int ENODEV ;
 char* SYS_CA_PORTS_DIR ;
 char* SYS_INFINIBAND ;
 int TRACE (char*,char const*,int) ;
 int get_port (char const*,char*,int,int *) ;
 char* resolve_ca_name (char const*,int*) ;
 int snprintf (char*,int,char*,char*,char const*,char*) ;

int umad_get_port(const char *ca_name, int portnum, umad_port_t * port)
{
 char dir_name[256];

 TRACE("ca_name %s portnum %d", ca_name, portnum);

 if (!(ca_name = resolve_ca_name(ca_name, &portnum)))
  return -ENODEV;

 snprintf(dir_name, sizeof(dir_name), "%s/%s/%s",
   SYS_INFINIBAND, ca_name, SYS_CA_PORTS_DIR);

 return get_port(ca_name, dir_name, portnum, port);
}
