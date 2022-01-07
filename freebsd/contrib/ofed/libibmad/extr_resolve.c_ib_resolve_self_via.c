
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct ibmad_port {int dummy; } ;
typedef int ibmad_gid_t ;
struct TYPE_4__ {int lid; int sl; int member_0; } ;
typedef TYPE_1__ ib_portid_t ;


 int IB_ATTR_NODE_INFO ;
 int IB_ATTR_PORT_INFO ;
 int IB_GID_GUID_F ;
 int IB_GID_PREFIX_F ;
 int IB_NODE_LOCAL_PORT_F ;
 int IB_NODE_PORT_GUID_F ;
 int IB_PORT_GID_PREFIX_F ;
 int IB_PORT_LID_F ;
 int IB_PORT_SMSL_F ;
 int mad_decode_field (int *,int ,int*) ;
 int mad_encode_field (int ,int ,int*) ;
 int smp_query_via (int *,TYPE_1__*,int ,int ,int ,struct ibmad_port const*) ;

int ib_resolve_self_via(ib_portid_t * portid, int *portnum, ibmad_gid_t * gid,
   const struct ibmad_port *srcport)
{
 ib_portid_t self = { 0 };
 uint8_t portinfo[64];
 uint8_t nodeinfo[64];
 uint64_t guid, prefix;

 if (!smp_query_via(nodeinfo, &self, IB_ATTR_NODE_INFO, 0, 0, srcport))
  return -1;

 if (!smp_query_via(portinfo, &self, IB_ATTR_PORT_INFO, 0, 0, srcport))
  return -1;

 mad_decode_field(portinfo, IB_PORT_LID_F, &portid->lid);
 mad_decode_field(portinfo, IB_PORT_SMSL_F, &portid->sl);
 mad_decode_field(portinfo, IB_PORT_GID_PREFIX_F, &prefix);
 mad_decode_field(nodeinfo, IB_NODE_PORT_GUID_F, &guid);

 if (portnum)
  mad_decode_field(nodeinfo, IB_NODE_LOCAL_PORT_F, portnum);
 if (gid) {
  mad_encode_field(*gid, IB_GID_PREFIX_F, &prefix);
  mad_encode_field(*gid, IB_GID_GUID_F, &guid);
 }
 return 0;
}
