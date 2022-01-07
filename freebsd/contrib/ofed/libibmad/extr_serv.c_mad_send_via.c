
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct ibmad_port {int * class_agents; int port_id; } ;
struct TYPE_4__ {int dataoffs; int mgtclass; int timeout; int datasz; } ;
typedef TYPE_1__ ib_rpc_t ;
typedef int ib_rmpp_hdr_t ;
typedef int ib_portid_t ;


 int DEBUG (char*,int *,void*) ;
 int IBWARN (char*,int,...) ;
 scalar_t__ IB_MAD_SIZE ;
 int errno ;
 scalar_t__ ibdebug ;
 scalar_t__ mad_build_pkt (void*,TYPE_1__*,int *,int *,void*) ;
 int mad_get_timeout (struct ibmad_port*,int ) ;
 int memset (int *,int ,scalar_t__) ;
 int stderr ;
 int strerror (int ) ;
 scalar_t__ umad_get_mad (void*) ;
 scalar_t__ umad_send (int ,int ,void*,scalar_t__,int ,int ) ;
 scalar_t__ umad_size () ;
 int xdump (int ,char*,char*,int ) ;

int mad_send_via(ib_rpc_t * rpc, ib_portid_t * dport, ib_rmpp_hdr_t * rmpp,
   void *data, struct ibmad_port *srcport)
{
 uint8_t pktbuf[1024];
 void *umad = pktbuf;

 memset(pktbuf, 0, umad_size() + IB_MAD_SIZE);

 DEBUG("rmpp %p data %p", rmpp, data);

 if (mad_build_pkt(umad, rpc, dport, rmpp, data) < 0)
  return -1;

 if (ibdebug) {
  IBWARN("data offs %d sz %d", rpc->dataoffs, rpc->datasz);
  xdump(stderr, "mad send data\n",
        (char *)umad_get_mad(umad) + rpc->dataoffs, rpc->datasz);
 }

 if (umad_send(srcport->port_id, srcport->class_agents[rpc->mgtclass & 0xff],
        umad, IB_MAD_SIZE, mad_get_timeout(srcport, rpc->timeout),
        0) < 0) {
  IBWARN("send failed; %s", strerror(errno));
  return -1;
 }

 return 0;
}
