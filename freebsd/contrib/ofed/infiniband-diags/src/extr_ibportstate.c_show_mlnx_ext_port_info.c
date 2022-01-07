
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ib_portid_t ;


 int IB_SMP_DATA_SIZE ;
 int mad_dump_mlnx_ext_port_info (char*,int,int *,int ) ;
 char* portid2str (int *) ;
 int printf (char*,char*,int,char*) ;

__attribute__((used)) static void show_mlnx_ext_port_info(ib_portid_t * dest, uint8_t * data, int portnum)
{
 char buf[256];

 mad_dump_mlnx_ext_port_info(buf, sizeof buf, data, IB_SMP_DATA_SIZE);

 printf("# MLNX ext Port info: %s port %d\n%s", portid2str(dest),
        portnum, buf);
}
