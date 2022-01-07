
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_14__ ;


struct ibnd_config {int mkey; int retries; int timeout_ms; int member_0; } ;
struct ibmad_port {int dummy; } ;
struct TYPE_20__ {int total_smps; } ;
typedef TYPE_2__ smp_engine_t ;
struct TYPE_21__ {scalar_t__ initial_hops; int selfportid; struct ibnd_config* cfg; TYPE_5__* f_int; } ;
typedef TYPE_3__ ibnd_scan_t ;
typedef int ibnd_fabric_t ;
struct TYPE_19__ {scalar_t__ cnt; } ;
struct TYPE_22__ {TYPE_1__ drpath; int member_0; } ;
typedef TYPE_4__ ib_portid_t ;
struct TYPE_18__ {int maxhops_discovered; int total_mads_used; } ;
struct TYPE_23__ {TYPE_14__ fabric; } ;
typedef TYPE_5__ f_internal_t ;


 int IBND_DEBUG (char*,int ) ;
 int IBND_ERROR (char*,...) ;
 int IB_SMI_CLASS ;
 int IB_SMI_DIRECT_CLASS ;
 TYPE_5__* allocate_fabric_internal () ;
 int free (TYPE_5__*) ;
 scalar_t__ group_nodes (TYPE_14__*) ;
 scalar_t__ ib_resolve_self_via (int *,int *,int *,struct ibmad_port*) ;
 int ibnd_destroy_fabric (TYPE_14__*) ;
 int mad_rpc_close_port (struct ibmad_port*) ;
 struct ibmad_port* mad_rpc_open_port (char*,int,int*,int) ;
 int mad_rpc_set_retries (struct ibmad_port*,int ) ;
 int mad_rpc_set_timeout (struct ibmad_port*,int ) ;
 int memset (int *,int ,int) ;
 int portid2str (TYPE_4__*) ;
 scalar_t__ process_mads (TYPE_2__*) ;
 int query_node_info (TYPE_2__*,TYPE_4__*,int *) ;
 scalar_t__ set_config (struct ibnd_config*,struct ibnd_config*) ;
 int smp_engine_destroy (TYPE_2__*) ;
 scalar_t__ smp_engine_init (TYPE_2__*,char*,int,TYPE_3__*,struct ibnd_config*) ;
 int smp_mkey_set (struct ibmad_port*,int ) ;

ibnd_fabric_t *ibnd_discover_fabric(char * ca_name, int ca_port,
        ib_portid_t * from,
        struct ibnd_config *cfg)
{
 struct ibnd_config config = { 0 };
 f_internal_t *f_int = ((void*)0);
 ib_portid_t my_portid = { 0 };
 smp_engine_t engine;
 ibnd_scan_t scan;
 struct ibmad_port *ibmad_port;
 int nc = 2;
 int mc[2] = { IB_SMI_CLASS, IB_SMI_DIRECT_CLASS };


 if (!from)
  from = &my_portid;

 if (set_config(&config, cfg)) {
  IBND_ERROR("Invalid ibnd_config\n");
  return ((void*)0);
 }

 f_int = allocate_fabric_internal();
 if (!f_int) {
  IBND_ERROR("OOM: failed to calloc ibnd_fabric_t\n");
  return ((void*)0);
 }

 memset(&scan.selfportid, 0, sizeof(scan.selfportid));
 scan.f_int = f_int;
 scan.cfg = &config;
 scan.initial_hops = from->drpath.cnt;

 ibmad_port = mad_rpc_open_port(ca_name, ca_port, mc, nc);
 if (!ibmad_port) {
  IBND_ERROR("can't open MAD port (%s:%d)\n", ca_name, ca_port);
  return (((void*)0));
 }
 mad_rpc_set_timeout(ibmad_port, cfg->timeout_ms);
 mad_rpc_set_retries(ibmad_port, cfg->retries);
 smp_mkey_set(ibmad_port, cfg->mkey);

 if (ib_resolve_self_via(&scan.selfportid,
    ((void*)0), ((void*)0), ibmad_port) < 0) {
  IBND_ERROR("Failed to resolve self\n");
  mad_rpc_close_port(ibmad_port);
  return ((void*)0);
 }
 mad_rpc_close_port(ibmad_port);

 if (smp_engine_init(&engine, ca_name, ca_port, &scan, &config)) {
  free(f_int);
  return (((void*)0));
 }

 IBND_DEBUG("from %s\n", portid2str(from));

 if (!query_node_info(&engine, from, ((void*)0)))
  if (process_mads(&engine) != 0)
   goto error;

 f_int->fabric.total_mads_used = engine.total_smps;
 f_int->fabric.maxhops_discovered += scan.initial_hops;

 if (group_nodes(&f_int->fabric))
  goto error;

 smp_engine_destroy(&engine);
 return (ibnd_fabric_t *)f_int;
error:
 smp_engine_destroy(&engine);
 ibnd_destroy_fabric(&f_int->fabric);
 return ((void*)0);
}
