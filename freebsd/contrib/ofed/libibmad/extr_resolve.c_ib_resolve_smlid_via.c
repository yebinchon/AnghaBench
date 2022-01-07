
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int sm_lid; int sm_sl; } ;
typedef TYPE_1__ umad_port_t ;
struct ibmad_port {int portnum; int ca_name; } ;
struct TYPE_9__ {int sl; } ;
typedef TYPE_2__ ib_portid_t ;


 int ENXIO ;
 int IB_LID_VALID (int ) ;
 int errno ;
 int ib_portid_set (TYPE_2__*,int ,int ,int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int umad_get_port (int ,int ,TYPE_1__*) ;
 int umad_release_port (TYPE_1__*) ;

int ib_resolve_smlid_via(ib_portid_t * sm_id, int timeout,
    const struct ibmad_port *srcport)
{
 umad_port_t port;
 int ret;

 memset(sm_id, 0, sizeof(*sm_id));

 ret = umad_get_port(srcport->ca_name, srcport->portnum, &port);
 if (ret)
  return -1;

 if (!IB_LID_VALID(port.sm_lid)) {
  errno = ENXIO;
  return -1;
 }
 sm_id->sl = port.sm_sl;

 ret = ib_portid_set(sm_id, port.sm_lid, 0, 0);
 umad_release_port(&port);
 return ret;
}
