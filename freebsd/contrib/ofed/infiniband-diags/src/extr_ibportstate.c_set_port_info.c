
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ib_portid_t ;


 int IBEXIT (char*) ;
 int IB_ATTR_PORT_INFO ;
 int printf (char*) ;
 int show_port_info (int *,int *,int,int,int) ;
 int smp_set_via (int *,int *,int ,unsigned int,int ,int ) ;
 int srcport ;

__attribute__((used)) static void set_port_info(ib_portid_t * dest, uint8_t * data, int portnum,
     int espeed_cap, int is_switch)
{
 unsigned mod;

 mod = portnum;
 if (espeed_cap)
  mod |= 1<<31;
 if (!smp_set_via(data, dest, IB_ATTR_PORT_INFO, mod, 0, srcport))
  IBEXIT("smp set portinfo failed");

 printf("\nAfter PortInfo set:\n");
 show_port_info(dest, data, portnum, espeed_cap, is_switch);
}
