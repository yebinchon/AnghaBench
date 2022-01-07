
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int portnum; int port_guid; int gid_prefix; int sm_sl; int base_lid; } ;
typedef TYPE_1__ umad_port_t ;
typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_11__ {int sl; int lid; } ;
typedef TYPE_2__ ibmad_gid_t ;
typedef TYPE_2__ ib_portid_t ;


 int IB_GID_GUID_F ;
 int IB_GID_PREFIX_F ;
 int cl_ntoh64 (int ) ;
 int mad_encode_field (TYPE_2__,int ,int *) ;
 int memset (TYPE_2__*,int ,int) ;
 int umad_get_port (char*,int ,TYPE_1__*) ;
 int umad_release_port (TYPE_1__*) ;

int resolve_self(char *ca_name, uint8_t ca_port, ib_portid_t *portid,
   int *portnum, ibmad_gid_t *gid)
{
 umad_port_t port;
 uint64_t prefix, guid;
 int rc;

 if (!(portid || portnum || gid))
  return (-1);

 if ((rc = umad_get_port(ca_name, ca_port, &port)) < 0)
  return rc;

 if (portid) {
  memset(portid, 0, sizeof(*portid));
  portid->lid = port.base_lid;
  portid->sl = port.sm_sl;
 }
 if (portnum)
  *portnum = port.portnum;
 if (gid) {
  memset(gid, 0, sizeof(*gid));
  prefix = cl_ntoh64(port.gid_prefix);
  guid = cl_ntoh64(port.port_guid);
  mad_encode_field(*gid, IB_GID_PREFIX_F, &prefix);
  mad_encode_field(*gid, IB_GID_GUID_F, &guid);
 }

 umad_release_port(&port);

 return 0;
}
