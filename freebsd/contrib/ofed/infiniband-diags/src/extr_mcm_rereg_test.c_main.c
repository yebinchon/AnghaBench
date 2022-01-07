
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int qp; scalar_t__ qkey; } ;
typedef TYPE_1__ ib_portid_t ;


 scalar_t__ IB_DEFAULT_QP1_QKEY ;
 int IB_SA_CLASS ;
 int IB_SMI_CLASS ;
 int IB_SMI_DIRECT_CLASS ;
 int TMO ;
 int * calloc (int,int) ;
 int err (char*,...) ;
 int errno ;
 int free (int *) ;
 int mad_rpc_open_port (int *,int ,int*,int) ;
 int mad_rpc_portid (int ) ;
 int rereg_and_test_port (char*,int,int,TYPE_1__*,int ) ;
 int resolve_sm_portid (int *,int ,TYPE_1__*) ;
 int srcport ;
 int strerror (int ) ;
 int umad_close_port (int) ;
 int umad_done () ;
 int * umad_get_mad (int *) ;
 int umad_register (int,int ,int,int ,int *) ;
 int umad_size () ;
 int umad_unregister (int,int) ;

int main(int argc, char **argv)
{
 char *guid_file = "port_guids.list";
 int mgmt_classes[2] = { IB_SMI_CLASS, IB_SMI_DIRECT_CLASS };
 ib_portid_t dport_id;
 int port, agent;
 uint8_t *umad, *mad;
 int len;

 if (argc > 1)
  guid_file = argv[1];

 srcport = mad_rpc_open_port(((void*)0), 0, mgmt_classes, 2);
 if (!srcport)
  err("Failed to open port");

 resolve_sm_portid(((void*)0), 0, &dport_id);
 dport_id.qp = 1;
 if (!dport_id.qkey)
  dport_id.qkey = IB_DEFAULT_QP1_QKEY;

 len = umad_size() + 256;
 umad = calloc(1, len);
 if (!umad) {
  err("cannot alloc mem for umad: %s\n", strerror(errno));
  return -1;
 }
 port = mad_rpc_portid(srcport);

 agent = umad_register(port, IB_SA_CLASS, 2, 0, ((void*)0));

 rereg_and_test_port(guid_file, port, agent, &dport_id, TMO);
 mad = umad_get_mad(umad);

 free(umad);
 umad_unregister(port, agent);
 umad_close_port(port);
 umad_done();

 return 0;
}
