
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibnd_config {int mkey; int flags; scalar_t__ timeout_ms; int member_0; } ;
struct ibdiag_opt {char* member_0; char member_1; int member_2; char* member_3; char* member_4; } ;
typedef int ibnd_fabric_t ;


 int IB_NODE_SWITCH ;
 int IB_SA_CLASS ;
 int IB_SMI_CLASS ;
 int IB_SMI_DIRECT_CLASS ;
 int close_node_name_map (int ) ;
 void* endlid ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 char* ibd_ca ;
 int ibd_ca_port ;
 int ibd_ibnetdisc_flags ;
 int ibd_mkey ;
 scalar_t__ ibd_timeout ;
 int ibdiag_process_opts (int,char**,struct ibnd_config*,char*,struct ibdiag_opt const*,int ,char*,char const**) ;
 int ibnd_destroy_fabric (int *) ;
 int * ibnd_discover_fabric (char*,int,int *,struct ibnd_config*) ;
 int ibnd_iter_nodes_type (int *,int ,int ,int *) ;
 int mad_rpc_close_port (int ) ;
 int mad_rpc_open_port (char*,int,int*,int) ;
 int mad_rpc_set_timeout (int ,scalar_t__) ;
 int node_name_map ;
 int node_name_map_file ;
 int open_node_name_map (int ) ;
 scalar_t__ optind ;
 int process_opt ;
 int process_switch ;
 int smp_mkey_set (int ,int ) ;
 int srcport ;
 void* startlid ;
 int stderr ;
 void* strtoul (char*,int ,int ) ;

int main(int argc, char **argv)
{
 int rc = 0;
 int mgmt_classes[3] =
     { IB_SMI_CLASS, IB_SMI_DIRECT_CLASS, IB_SA_CLASS };

 struct ibnd_config config = { 0 };
 ibnd_fabric_t *fabric = ((void*)0);

 const struct ibdiag_opt opts[] = {
  {"all", 'a', 0, ((void*)0), "show all lids, even invalid entries"},
  {"no_dests", 'n', 0, ((void*)0),
   "do not try to resolve destinations"},
  {"Multicast", 'M', 0, ((void*)0), "show multicast forwarding tables"},
  {"node-name-map", 1, 1, "<file>", "node name map file"},
  {0}
 };
 char usage_args[] = "[<dest dr_path|lid|guid> [<startlid> [<endlid>]]]";
 const char *usage_examples[] = {
  " -- Unicast examples:",
  "-a\t# same, but dump all lids, even with invalid out ports",
  "-n\t# simple dump format - no destination resolving",
  "10\t# dump lids starting from 10",
  "0x10 0x20\t# dump lid range",
  " -- Multicast examples:",
  "-M\t# dump all non empty mlids of switch with lid 4",
  "-M 0xc010 0xc020\t# same, but with range",
  "-M -n\t# simple dump format",
  ((void*)0),
 };

 ibdiag_process_opts(argc, argv, &config, "KGDLs", opts, process_opt,
       usage_args, usage_examples);

 argc -= optind;
 argv += optind;

 if (argc > 0)
  startlid = strtoul(argv[0], 0, 0);
 if (argc > 1)
  endlid = strtoul(argv[1], 0, 0);

 node_name_map = open_node_name_map(node_name_map_file);

 if (ibd_timeout)
  config.timeout_ms = ibd_timeout;

 config.flags = ibd_ibnetdisc_flags;
 config.mkey = ibd_mkey;

 if ((fabric = ibnd_discover_fabric(ibd_ca, ibd_ca_port, ((void*)0),
      &config)) != ((void*)0)) {

  srcport = mad_rpc_open_port(ibd_ca, ibd_ca_port, mgmt_classes, 3);
  if (!srcport) {
   fprintf(stderr,
    "Failed to open '%s' port '%d'\n", ibd_ca, ibd_ca_port);
   rc = -1;
   goto Exit;
  }
  smp_mkey_set(srcport, ibd_mkey);

  if (ibd_timeout) {
   mad_rpc_set_timeout(srcport, ibd_timeout);
  }

  ibnd_iter_nodes_type(fabric, process_switch, IB_NODE_SWITCH, fabric);

  mad_rpc_close_port(srcport);

 } else {
  fprintf(stderr, "Failed to discover fabric\n");
  rc = -1;
 }
Exit:
 ibnd_destroy_fabric(fabric);

 close_node_name_map(node_name_map);
 exit(rc);
}
