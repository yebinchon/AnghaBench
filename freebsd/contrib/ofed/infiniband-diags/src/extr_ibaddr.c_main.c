
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ibdiag_opt {char* member_0; char member_1; char* member_4; int * member_3; int member_2; } ;
struct TYPE_5__ {int member_0; } ;
typedef TYPE_1__ ib_portid_t ;


 int IBEXIT (char*,...) ;
 int IB_SA_CLASS ;
 int IB_SMI_CLASS ;
 int IB_SMI_DIRECT_CLASS ;
 int exit (int ) ;
 scalar_t__ ib_resolve_addr (TYPE_1__*,int,int,int) ;
 int ibd_ca ;
 int ibd_ca_port ;
 int ibd_dest_type ;
 int ibd_mkey ;
 int ibd_sm_id ;
 int ibdiag_process_opts (int,char**,int *,char*,struct ibdiag_opt const*,int ,char*,char const**) ;
 int mad_rpc_close_port (int ) ;
 int mad_rpc_open_port (int ,int ,int*,int) ;
 scalar_t__ optind ;
 int process_opt ;
 scalar_t__ resolve_portid_str (int ,int ,TYPE_1__*,char*,int ,int ,int ) ;
 scalar_t__ resolve_self (int ,int ,TYPE_1__*,int*,int *) ;
 int show_gid ;
 int show_lid ;
 int smp_mkey_set (int ,int ) ;
 int srcport ;
 int strtoul (char*,int ,int ) ;

int main(int argc, char **argv)
{
 int mgmt_classes[3] =
     { IB_SMI_CLASS, IB_SMI_DIRECT_CLASS, IB_SA_CLASS };
 ib_portid_t portid = { 0 };
 int port = 0;

 const struct ibdiag_opt opts[] = {
  {"gid_show", 'g', 0, ((void*)0), "show gid address only"},
  {"lid_show", 'l', 0, ((void*)0), "show lid range only"},
  {"Lid_show", 'L', 0, ((void*)0), "show lid range (in decimal) only"},
  {0}
 };
 char usage_args[] = "[<lid|dr_path|guid>]";
 const char *usage_examples[] = {
  "\t\t# local port's address",
  "32\t\t# show lid range and gid of lid 32",
  "-G 0x8f1040023\t# same but using guid address",
  "-l 32\t\t# show lid range only",
  "-L 32\t\t# show decimal lid range only",
  "-g 32\t\t# show gid address only",
  ((void*)0)
 };

 ibdiag_process_opts(argc, argv, ((void*)0), "KL", opts, process_opt,
       usage_args, usage_examples);

 argc -= optind;
 argv += optind;

 if (argc > 1)
  port = strtoul(argv[1], 0, 0);

 if (!show_lid && !show_gid)
  show_lid = show_gid = 1;

 srcport = mad_rpc_open_port(ibd_ca, ibd_ca_port, mgmt_classes, 3);
 if (!srcport)
  IBEXIT("Failed to open '%s' port '%d'", ibd_ca, ibd_ca_port);

 smp_mkey_set(srcport, ibd_mkey);

 if (argc) {
  if (resolve_portid_str(ibd_ca, ibd_ca_port, &portid, argv[0],
           ibd_dest_type, ibd_sm_id, srcport) < 0)
   IBEXIT("can't resolve destination port %s", argv[0]);
 } else {
  if (resolve_self(ibd_ca, ibd_ca_port, &portid, &port, ((void*)0)) < 0)
   IBEXIT("can't resolve self port %s", argv[0]);
 }

 if (ib_resolve_addr(&portid, port, show_lid, show_gid) < 0)
  IBEXIT("can't resolve requested address");

 mad_rpc_close_port(srcport);
 exit(0);
}
