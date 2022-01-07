
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int ib_portid_t ;


 int IB_ATTR_PORT_INFO ;
 int IB_PORT_LID_F ;
 int ib_portid_set (int *,int ,int ,int ) ;
 int mad_decode_field (int *,int ,int *) ;
 int smp_query_via (int *,int *,int ,int ,int ,void const*) ;

__attribute__((used)) static int resolve_lid(ib_portid_t * portid, const void *srcport)
{
 uint8_t portinfo[64] = { 0 };
 uint16_t lid;

 if (!smp_query_via(portinfo, portid, IB_ATTR_PORT_INFO, 0, 0, srcport))
  return -1;
 mad_decode_field(portinfo, IB_PORT_LID_F, &lid);

 ib_portid_set(portid, lid, 0, 0);

 return 0;
}
