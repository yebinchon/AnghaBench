
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nv {int dummy; } ;
typedef scalar_t__ int64_t ;
struct TYPE_3__ {int hc_controladdr; } ;







 int EX_CONFIG ;
 int EX_OSERR ;
 int EX_SOFTWARE ;
 int EX_UNAVAILABLE ;
 int EX_USAGE ;
 int HASTCTL_CMD_SETROLE ;
 int HASTCTL_CMD_STATUS ;
 int HAST_ROLE_INIT ;
 int HAST_ROLE_PRIMARY ;
 int HAST_ROLE_SECONDARY ;
 int HAST_TIMEOUT ;
 int PJDLOG_ABORT (char*) ;
 int PJDLOG_ASSERT (int ) ;
 int PJDLOG_MODE_STD ;
 TYPE_1__* cfg ;
 int cfgpath ;
 int control_create (int,char**,scalar_t__,scalar_t__,scalar_t__) ;
 int control_dump (int,char**) ;
 int control_list (struct nv*) ;
 int control_set_role (struct nv*,char*) ;
 int control_status (struct nv*) ;
 int controlconn ;
 scalar_t__ drop_privs (int *) ;
 int errx (int ,char*) ;
 int exit (int) ;
 int expand_number (int ,scalar_t__*) ;
 int getopt (int,char**,char const*) ;
 int hast_proto_recv_hdr (int ,struct nv**) ;
 int hast_proto_send (int *,int ,struct nv*,int *,int ) ;
 int nv_add_string (struct nv*,char*,char*,int) ;
 int nv_add_uint8 (struct nv*,int ,char*) ;
 struct nv* nv_alloc () ;
 int nv_free (struct nv*) ;
 int nv_get_int16 (struct nv*,char*) ;
 int nv_set_error (struct nv*,int ) ;
 int optarg ;
 scalar_t__ optind ;
 int pjdlog_debug_set (int) ;
 int pjdlog_exit (int ,char*,int ) ;
 int pjdlog_exitx (int ,char*,int) ;
 int pjdlog_init (int ) ;
 int proto_client (int *,int ,int *) ;
 int proto_connect (int ,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int usage () ;
 TYPE_1__* yy_config_parse (int ,int) ;

int
main(int argc, char *argv[])
{
 struct nv *nv;
 int64_t mediasize, extentsize, keepdirty;
 int cmd, debug, error, ii;
 const char *optstr;

 debug = 0;
 mediasize = extentsize = keepdirty = 0;

 if (argc == 1)
  usage();

 if (strcmp(argv[1], "create") == 0) {
  cmd = 132;
  optstr = "c:de:k:m:h";
 } else if (strcmp(argv[1], "role") == 0) {
  cmd = 129;
  optstr = "c:dh";
 } else if (strcmp(argv[1], "list") == 0) {
  cmd = 130;
  optstr = "c:dh";
 } else if (strcmp(argv[1], "status") == 0) {
  cmd = 128;
  optstr = "c:dh";
 } else if (strcmp(argv[1], "dump") == 0) {
  cmd = 131;
  optstr = "c:dh";
 } else
  usage();

 argc--;
 argv++;

 for (;;) {
  int ch;

  ch = getopt(argc, argv, optstr);
  if (ch == -1)
   break;
  switch (ch) {
  case 'c':
   cfgpath = optarg;
   break;
  case 'd':
   debug++;
   break;
  case 'e':
   if (expand_number(optarg, &extentsize) == -1)
    errx(EX_USAGE, "Invalid extentsize");
   break;
  case 'k':
   if (expand_number(optarg, &keepdirty) == -1)
    errx(EX_USAGE, "Invalid keepdirty");
   break;
  case 'm':
   if (expand_number(optarg, &mediasize) == -1)
    errx(EX_USAGE, "Invalid mediasize");
   break;
  case 'h':
  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;

 switch (cmd) {
 case 132:
 case 129:
  if (argc == 0)
   usage();
  break;
 }

 pjdlog_init(PJDLOG_MODE_STD);
 pjdlog_debug_set(debug);

 cfg = yy_config_parse(cfgpath, 1);
 PJDLOG_ASSERT(cfg != ((void*)0));

 switch (cmd) {
 case 132:
  control_create(argc, argv, mediasize, extentsize, keepdirty);

  PJDLOG_ABORT("What are we doing here?!");
  break;
 case 131:

  control_dump(argc, argv);

  PJDLOG_ABORT("What are we doing here?!");
  break;
 case 129:

  if (argc < 2)
   usage();
  nv = nv_alloc();
  nv_add_uint8(nv, HASTCTL_CMD_SETROLE, "cmd");
  if (strcmp(argv[0], "init") == 0)
   nv_add_uint8(nv, HAST_ROLE_INIT, "role");
  else if (strcmp(argv[0], "primary") == 0)
   nv_add_uint8(nv, HAST_ROLE_PRIMARY, "role");
  else if (strcmp(argv[0], "secondary") == 0)
   nv_add_uint8(nv, HAST_ROLE_SECONDARY, "role");
  else
   usage();
  for (ii = 0; ii < argc - 1; ii++)
   nv_add_string(nv, argv[ii + 1], "resource%d", ii);
  break;
 case 130:
 case 128:

  nv = nv_alloc();
  nv_add_uint8(nv, HASTCTL_CMD_STATUS, "cmd");
  if (argc == 0)
   nv_add_string(nv, "all", "resource%d", 0);
  else {
   for (ii = 0; ii < argc; ii++)
    nv_add_string(nv, argv[ii], "resource%d", ii);
  }
  break;
 default:
  PJDLOG_ABORT("Impossible command!");
 }


 if (proto_client(((void*)0), cfg->hc_controladdr, &controlconn) == -1) {
  pjdlog_exit(EX_OSERR,
      "Unable to setup control connection to %s",
      cfg->hc_controladdr);
 }

 if (proto_connect(controlconn, HAST_TIMEOUT) == -1) {
  pjdlog_exit(EX_OSERR, "Unable to connect to hastd via %s",
      cfg->hc_controladdr);
 }

 if (drop_privs(((void*)0)) != 0)
  exit(EX_CONFIG);


 if (hast_proto_send(((void*)0), controlconn, nv, ((void*)0), 0) == -1) {
  pjdlog_exit(EX_UNAVAILABLE,
      "Unable to send command to hastd via %s",
      cfg->hc_controladdr);
 }
 nv_free(nv);

 if (hast_proto_recv_hdr(controlconn, &nv) == -1) {
  pjdlog_exit(EX_UNAVAILABLE,
      "cannot receive reply from hastd via %s",
      cfg->hc_controladdr);
 }

 error = nv_get_int16(nv, "error");
 if (error != 0) {
  pjdlog_exitx(EX_SOFTWARE, "Error %d received from hastd.",
      error);
 }
 nv_set_error(nv, 0);

 switch (cmd) {
 case 129:
  error = control_set_role(nv, argv[0]);
  break;
 case 130:
  error = control_list(nv);
  break;
 case 128:
  error = control_status(nv);
  break;
 default:
  PJDLOG_ABORT("Impossible command!");
 }

 exit(error);
}
