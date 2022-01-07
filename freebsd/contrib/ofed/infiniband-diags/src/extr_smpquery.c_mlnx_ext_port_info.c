
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ib_portid_t ;


 int IB_ATTR_MLNX_EXT_PORT_INFO ;
 int IB_SMP_DATA_SIZE ;
 int mad_dump_mlnx_ext_port_info (char*,int,char*,int) ;
 char* portid2str (int *) ;
 int printf (char*,char*,int,char*) ;
 int smp_query_via (char*,int *,int ,int,int ,int ) ;
 int srcport ;
 int strtol (char*,int ,int ) ;

__attribute__((used)) static char *mlnx_ext_port_info(ib_portid_t * dest, char **argv, int argc)
{
 char buf[2300];
 char data[IB_SMP_DATA_SIZE];
 int portnum = 0;

 if (argc > 0)
  portnum = strtol(argv[0], 0, 0);

 if (!smp_query_via(data, dest, IB_ATTR_MLNX_EXT_PORT_INFO, portnum, 0, srcport))
  return "Mellanox ext port info query failed";

 mad_dump_mlnx_ext_port_info(buf, sizeof buf, data, sizeof data);

 printf("# MLNX ext Port info: %s port %d\n%s", portid2str(dest), portnum, buf);
 return 0;
}
