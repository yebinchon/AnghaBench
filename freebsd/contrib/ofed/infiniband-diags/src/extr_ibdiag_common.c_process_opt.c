
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IBEXIT (char*,...) ;
 int IB_DEST_DRPATH ;
 int IB_DEST_GUID ;
 int IB_DEST_LID ;
 long INT_MAX ;
 int errno ;
 int exit (int ) ;
 int fprintf (int ,char*,char*,char*) ;
 char* get_build_version () ;
 char* getpass (char*) ;
 char* ibd_ca ;
 int ibd_ca_port ;
 int ibd_dest_type ;
 int ibd_mkey ;
 int * ibd_sm_id ;
 int ibd_timeout ;
 int ibdebug ;
 int ibdiag_show_usage () ;
 int ibverbose ;
 int madrpc_set_timeout (int) ;
 int madrpc_show_errors (int) ;
 char* prog_name ;
 int read_ibdiag_config (char*) ;
 int resolve_portid_str (char*,int ,int *,char*,int ,int ,int *) ;
 int show_keys ;
 int sm_portid ;
 int stderr ;
 long strtol (char*,char**,int ) ;
 int strtoul (char*,int ,int ) ;
 int strtoull (char*,char**,int ) ;
 int umad_debug (int ) ;

__attribute__((used)) static int process_opt(int ch, char *optarg)
{
 char *endp;
 long val;

 switch (ch) {
 case 'z':
  read_ibdiag_config(optarg);
  break;
 case 'h':
  ibdiag_show_usage();
  break;
 case 'V':
  fprintf(stderr, "%s %s\n", prog_name, get_build_version());
  exit(0);
 case 'e':
  madrpc_show_errors(1);
  break;
 case 'v':
  ibverbose++;
  break;
 case 'd':
  ibdebug++;
  madrpc_show_errors(1);
  umad_debug(ibdebug - 1);
  break;
 case 'C':
  ibd_ca = optarg;
  break;
 case 'P':
  ibd_ca_port = strtoul(optarg, 0, 0);
  if (ibd_ca_port < 0)
   IBEXIT("cannot resolve CA port %d", ibd_ca_port);
  break;
 case 'D':
  ibd_dest_type = IB_DEST_DRPATH;
  break;
 case 'L':
  ibd_dest_type = IB_DEST_LID;
  break;
 case 'G':
  ibd_dest_type = IB_DEST_GUID;
  break;
 case 't':
  errno = 0;
  val = strtol(optarg, &endp, 0);
  if (errno || (endp && *endp != '\0') || val <= 0 ||
      val > INT_MAX)
   IBEXIT("Invalid timeout \"%s\".  Timeout requires a "
    "positive integer value < %d.", optarg, INT_MAX);
  else {
   madrpc_set_timeout((int)val);
   ibd_timeout = (int)val;
  }
  break;
 case 's':

  if (resolve_portid_str(ibd_ca, ibd_ca_port, &sm_portid, optarg,
    IB_DEST_LID, 0, ((void*)0)) < 0)
   IBEXIT("cannot resolve SM destination port %s",
    optarg);
  ibd_sm_id = &sm_portid;
  break;
 case 'K':
  show_keys = 1;
  break;
 case 'y':
  errno = 0;
  ibd_mkey = strtoull(optarg, &endp, 0);
  if (errno || *endp != '\0') {
   errno = 0;
   ibd_mkey = strtoull(getpass("M_Key: "), &endp, 0);
   if (errno || *endp != '\0') {
    IBEXIT("Bad M_Key");
   }
                }
                break;
 default:
  return -1;
 }

 return 0;
}
