
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ib_portid_t ;


 int IBEXIT (char*) ;
 int IB_ATTR_MLNX_EXT_PORT_INFO ;
 int printf (char*) ;
 int show_mlnx_ext_port_info (int *,int *,int) ;
 int smp_set_via (int *,int *,int ,int,int ,int ) ;
 int srcport ;

__attribute__((used)) static void set_mlnx_ext_port_info(ib_portid_t * dest, uint8_t * data, int portnum)
{
 if (!smp_set_via(data, dest, IB_ATTR_MLNX_EXT_PORT_INFO,
    portnum, 0, srcport))
  IBEXIT("smp set MLNX ext portinfo failed");

 printf("\nAfter MLNXExtendedPortInfo set:\n");
 show_mlnx_ext_port_info(dest, data, portnum);
}
