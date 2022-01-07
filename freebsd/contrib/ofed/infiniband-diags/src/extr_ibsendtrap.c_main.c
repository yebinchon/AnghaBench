
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usage_args ;
struct TYPE_2__ {char* trap_name; } ;


 int IBEXIT (char*,int ,int ) ;
 int IB_SMI_CLASS ;
 int IB_SMI_DIRECT_CLASS ;
 int atoi (char*) ;
 int error_port ;
 int exit (int) ;
 int ibd_ca ;
 int ibd_ca_port ;
 int ibd_mkey ;
 int ibdiag_process_opts (int,char**,int *,char*,int *,int *,char*,int *) ;
 int mad_rpc_close_port (int ) ;
 int mad_rpc_open_port (int ,int ,int*,int) ;
 int madrpc_show_errors (int) ;
 scalar_t__ optind ;
 int process_send_trap (char*) ;
 int smp_mkey_set (int ,int ) ;
 scalar_t__ snprintf (char*,int,char*,char*) ;
 int sprintf (char*,char*) ;
 int srcport ;
 TYPE_1__* traps ;

int main(int argc, char **argv)
{
 char usage_args[1024];
 int mgmt_classes[2] = { IB_SMI_CLASS, IB_SMI_DIRECT_CLASS };
 char *trap_name = ((void*)0);
 int i, n, rc;

 n = sprintf(usage_args, "[<trap_name>] [<error_port>]\n"
      "\nArgument <trap_name> can be one of the following:\n");
 for (i = 0; traps[i].trap_name; i++) {
  n += snprintf(usage_args + n, sizeof(usage_args) - n,
         "  %s\n", traps[i].trap_name);
  if (n >= sizeof(usage_args))
   exit(-1);
 }
 snprintf(usage_args + n, sizeof(usage_args) - n,
   "\n  default behavior is to send \"%s\"", traps[0].trap_name);

 ibdiag_process_opts(argc, argv, ((void*)0), "DGKL", ((void*)0), ((void*)0),
       usage_args, ((void*)0));

 argc -= optind;
 argv += optind;

 trap_name = argv[0] ? argv[0] : traps[0].trap_name;

 if (argc > 1)
  error_port = atoi(argv[1]);

 madrpc_show_errors(1);

 srcport = mad_rpc_open_port(ibd_ca, ibd_ca_port, mgmt_classes, 2);
 if (!srcport)
  IBEXIT("Failed to open '%s' port '%d'", ibd_ca, ibd_ca_port);

 smp_mkey_set(srcport, ibd_mkey);

 rc = process_send_trap(trap_name);
 mad_rpc_close_port(srcport);
 return rc;
}
