
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct ibmad_port {int * class_agents; int port_id; } ;
struct TYPE_5__ {int error; } ;
typedef TYPE_1__ ib_rpc_v1_t ;
struct TYPE_6__ {int mgtclass; int rstatus; int dataoffs; int datasz; int timeout; } ;
typedef TYPE_2__ ib_rpc_t ;
typedef int ib_portid_t ;


 int EIO ;
 int ERRS (char*,int,int ) ;
 int IBWARN (char*,int,...) ;
 int IB_DRSMP_STATUS_F ;
 int IB_MAD_RPC_VERSION1 ;
 int IB_MAD_RPC_VERSION_MASK ;
 scalar_t__ IB_MAD_SIZE ;
 int IB_MAD_STS_REDIRECT ;
 int _do_madrpc (int ,int *,int *,int ,int,int ,int ,int*) ;
 int errno ;
 scalar_t__ ibdebug ;
 int mad_build_pkt (int *,TYPE_2__*,int *,int ,void*) ;
 int mad_get_field (int *,int ,int ) ;
 int mad_get_retries (struct ibmad_port const*) ;
 int mad_get_timeout (struct ibmad_port const*,int ) ;
 int memcpy (void*,int *,int ) ;
 int memset (int *,int ,scalar_t__) ;
 int portid2str (int *) ;
 scalar_t__ redirect_port (int *,int *) ;
 int stderr ;
 int * umad_get_mad (int *) ;
 scalar_t__ umad_size () ;
 int xdump (int ,char*,int *,int ) ;

void *mad_rpc(const struct ibmad_port *port, ib_rpc_t * rpc,
       ib_portid_t * dport, void *payload, void *rcvdata)
{
 int status, len;
 uint8_t sndbuf[1024], rcvbuf[1024], *mad;
 ib_rpc_v1_t *rpcv1 = (ib_rpc_v1_t *)rpc;
 int error = 0;

 if ((rpc->mgtclass & IB_MAD_RPC_VERSION_MASK) == IB_MAD_RPC_VERSION1)
  rpcv1->error = 0;
 do {
  len = 0;
  memset(sndbuf, 0, umad_size() + IB_MAD_SIZE);

  if ((len = mad_build_pkt(sndbuf, rpc, dport, 0, payload)) < 0)
   return ((void*)0);

  if ((len = _do_madrpc(port->port_id, sndbuf, rcvbuf,
          port->class_agents[rpc->mgtclass & 0xff],
          len, mad_get_timeout(port, rpc->timeout),
          mad_get_retries(port), &error)) < 0) {
   if ((rpc->mgtclass & IB_MAD_RPC_VERSION_MASK) ==
       IB_MAD_RPC_VERSION1)
    rpcv1->error = error;
   IBWARN("_do_madrpc failed; dport (%s)",
          portid2str(dport));
   return ((void*)0);
  }

  mad = umad_get_mad(rcvbuf);
  status = mad_get_field(mad, 0, IB_DRSMP_STATUS_F);



  if (status == IB_MAD_STS_REDIRECT) {


   if (redirect_port(dport, mad))
    break;
  } else
   break;
 } while (1);

 if ((rpc->mgtclass & IB_MAD_RPC_VERSION_MASK) == IB_MAD_RPC_VERSION1)
  rpcv1->error = error;
 rpc->rstatus = status;

 if (status != 0) {
  ERRS("MAD completed with error status 0x%x; dport (%s)",
       status, portid2str(dport));
  errno = EIO;
  return ((void*)0);
 }

 if (ibdebug) {
  IBWARN("data offs %d sz %d", rpc->dataoffs, rpc->datasz);
  xdump(stderr, "mad data\n", mad + rpc->dataoffs, rpc->datasz);
 }

 if (rcvdata)
  memcpy(rcvdata, mad + rpc->dataoffs, rpc->datasz);

 return rcvdata;
}
