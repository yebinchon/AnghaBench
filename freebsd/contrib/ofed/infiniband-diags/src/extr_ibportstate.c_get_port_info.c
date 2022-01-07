
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ib_portid_t ;


 int CL_NTOH32 (int ) ;
 int IBEXIT (char*) ;
 int IB_ATTR_PORT_INFO ;
 int IB_PORT_CAPMASK_F ;
 int IB_PORT_CAP_HAS_EXT_SPEEDS ;
 int IB_SMP_DATA_SIZE ;
 int mad_get_field (int *,int ,int ) ;
 int smp_query_via (int *,int *,int ,int,int ,int ) ;
 int srcport ;

__attribute__((used)) static int get_port_info(ib_portid_t * dest, uint8_t * data, int portnum,
    int is_switch)
{
 uint8_t smp[IB_SMP_DATA_SIZE];
 uint8_t *info;
 int cap_mask;

 if (is_switch) {
  if (!smp_query_via(smp, dest, IB_ATTR_PORT_INFO, 0, 0, srcport))
   IBEXIT("smp query port 0 portinfo failed");
  info = smp;
 } else
  info = data;

 if (!smp_query_via(data, dest, IB_ATTR_PORT_INFO, portnum, 0, srcport))
  IBEXIT("smp query portinfo failed");
 cap_mask = mad_get_field(info, 0, IB_PORT_CAPMASK_F);
 return (cap_mask & CL_NTOH32(IB_PORT_CAP_HAS_EXT_SPEEDS));
}
