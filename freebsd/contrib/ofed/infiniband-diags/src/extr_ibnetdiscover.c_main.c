
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibnd_config {int mkey; int flags; scalar_t__ timeout_ms; int member_0; } ;
struct ibdiag_opt {char* member_0; float member_1; int member_2; char* member_3; char* member_4; } ;
typedef int ibnd_fabric_t ;


 int IBEXIT (char*,...) ;
 scalar_t__ cache_file ;
 int close_node_name_map (int ) ;
 int diff (int *,int *) ;
 scalar_t__ diff_cache_file ;
 int dump_ports_report ;
 int dump_topology (int ,int *) ;
 int exit (int ) ;
 int f ;
 int fopen (char*,char*) ;
 int group ;
 int ibd_ca ;
 int ibd_ca_port ;
 int ibd_ibnetdisc_flags ;
 int ibd_mkey ;
 scalar_t__ ibd_timeout ;
 int ibdiag_process_opts (int,char**,struct ibnd_config*,char*,struct ibdiag_opt const*,int ,char*,int *) ;
 scalar_t__ ibnd_cache_fabric (int *,scalar_t__,int ) ;
 int ibnd_destroy_fabric (int *) ;
 int * ibnd_discover_fabric (int ,int ,int *,struct ibnd_config*) ;
 int ibnd_iter_nodes (int *,int ,int *) ;
 int * ibnd_load_fabric (scalar_t__,int ) ;
 scalar_t__ list ;
 int list_nodes (int *,scalar_t__) ;
 scalar_t__ load_cache_file ;
 int node_name_map ;
 int node_name_map_file ;
 int open_node_name_map (int ) ;
 scalar_t__ optind ;
 scalar_t__ ports_report ;
 int process_opt ;
 int stdout ;

int main(int argc, char **argv)
{
 struct ibnd_config config = { 0 };
 ibnd_fabric_t *fabric = ((void*)0);
 ibnd_fabric_t *diff_fabric = ((void*)0);

 const struct ibdiag_opt opts[] = {
  {"full", 'f', 0, ((void*)0), "show full information (ports' speed and width, vlcap)"},
  {"show", 's', 0, ((void*)0), "show more information"},
  {"list", 'l', 0, ((void*)0), "list of connected nodes"},
  {"grouping", 'g', 0, ((void*)0), "show grouping"},
  {"Hca_list", 'H', 0, ((void*)0), "list of connected CAs"},
  {"Switch_list", 'S', 0, ((void*)0), "list of connected switches"},
  {"Router_list", 'R', 0, ((void*)0), "list of connected routers"},
  {"node-name-map", 1, 1, "<file>", "node name map file"},
  {"cache", 2, 1, "<file>",
   "filename to cache ibnetdiscover data to"},
  {"load-cache", 3, 1, "<file>",
   "filename of ibnetdiscover cache to load"},
  {"diff", 4, 1, "<file>",
   "filename of ibnetdiscover cache to diff"},
  {"diffcheck", 5, 1, "<key(s)>",
   "specify checks to execute for --diff"},
  {"ports", 'p', 0, ((void*)0), "obtain a ports report"},
  {"max_hops", 'm', 0, ((void*)0),
   "report max hops discovered by the library"},
  {"outstanding_smps", 'o', 1, ((void*)0),
   "specify the number of outstanding SMP's which should be "
   "issued during the scan"},
  {0}
 };
 char usage_args[] = "[topology-file]";

 ibdiag_process_opts(argc, argv, &config, "DGKLs", opts, process_opt,
       usage_args, ((void*)0));

 f = stdout;

 argc -= optind;
 argv += optind;

 if (ibd_timeout)
  config.timeout_ms = ibd_timeout;

 config.flags = ibd_ibnetdisc_flags;

 if (argc && !(f = fopen(argv[0], "w")))
  IBEXIT("can't open file %s for writing", argv[0]);

 config.mkey = ibd_mkey;

 node_name_map = open_node_name_map(node_name_map_file);

 if (diff_cache_file &&
     !(diff_fabric = ibnd_load_fabric(diff_cache_file, 0)))
  IBEXIT("loading cached fabric for diff failed\n");

 if (load_cache_file) {
  if ((fabric = ibnd_load_fabric(load_cache_file, 0)) == ((void*)0))
   IBEXIT("loading cached fabric failed\n");
 } else {
  if ((fabric =
       ibnd_discover_fabric(ibd_ca, ibd_ca_port, ((void*)0), &config)) == ((void*)0))
   IBEXIT("discover failed\n");
 }

 if (ports_report)
  ibnd_iter_nodes(fabric, dump_ports_report, ((void*)0));
 else if (list)
  list_nodes(fabric, list);
 else if (diff_fabric)
  diff(diff_fabric, fabric);
 else
  dump_topology(group, fabric);

 if (cache_file)
  if (ibnd_cache_fabric(fabric, cache_file, 0) < 0)
   IBEXIT("caching ibnetdiscover data failed\n");

 ibnd_destroy_fabric(fabric);
 if (diff_fabric)
  ibnd_destroy_fabric(diff_fabric);
 close_node_name_map(node_name_map);
 exit(0);
}
