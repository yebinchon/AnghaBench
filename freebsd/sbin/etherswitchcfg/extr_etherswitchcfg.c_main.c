
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int es_nvlangroups; int es_nports; } ;
struct cfg {char* controlfile; scalar_t__ fd; int mode; TYPE_1__ info; int unit; TYPE_1__ conf; int verbose; int mediatypes; } ;
typedef int cfg ;
struct TYPE_4__ {char* name; int mode; int args; int (* f ) (struct cfg*,int,char**) ;} ;


 int EX_OSERR ;
 int EX_UNAVAILABLE ;
 int EX_USAGE ;
 int IOETHERSWITCHGETCONF ;
 int IOETHERSWITCHGETINFO ;







 int O_RDONLY ;
 int bzero (struct cfg*,int) ;
 int close (scalar_t__) ;
 TYPE_2__* cmds ;
 int err (int ,char*,...) ;
 int errx (int ,char*,char*) ;
 int getopt (int,char**,char*) ;
 scalar_t__ ioctl (scalar_t__,int ,TYPE_1__*) ;
 int newmode (struct cfg*,int const) ;
 scalar_t__ open (char*,int ) ;
 char* optarg ;
 scalar_t__ optind ;
 int print_info (struct cfg*) ;
 int printf (char*,char*,int,char*) ;
 int set_phyregister (struct cfg*,char*) ;
 int set_register (struct cfg*,char*) ;
 int sscanf (char*,char*,int *) ;
 int strcmp (char*,char*) ;
 int stub1 (struct cfg*,int,char**) ;
 int usage (struct cfg*,char**) ;

int
main(int argc, char *argv[])
{
 int ch;
 struct cfg cfg;
 int i;

 bzero(&cfg, sizeof(cfg));
 cfg.controlfile = "/dev/etherswitch0";
 while ((ch = getopt(argc, argv, "f:mv?")) != -1)
  switch(ch) {
  case 'f':
   cfg.controlfile = optarg;
   break;
  case 'm':
   cfg.mediatypes++;
   break;
  case 'v':
   cfg.verbose++;
   break;
  case '?':

  default:
   usage(&cfg, argv);
  }
 argc -= optind;
 argv += optind;
 cfg.fd = open(cfg.controlfile, O_RDONLY);
 if (cfg.fd < 0)
  err(EX_UNAVAILABLE, "Can't open control file: %s", cfg.controlfile);
 if (ioctl(cfg.fd, IOETHERSWITCHGETINFO, &cfg.info) != 0)
  err(EX_OSERR, "ioctl(IOETHERSWITCHGETINFO)");
 if (ioctl(cfg.fd, IOETHERSWITCHGETCONF, &cfg.conf) != 0)
  err(EX_OSERR, "ioctl(IOETHERSWITCHGETCONF)");
 if (argc == 0) {
  print_info(&cfg);
  return (0);
 }
 cfg.mode = 132;
 while (argc > 0) {
  switch(cfg.mode) {
  case 132:
   if (strcmp(argv[0], "info") == 0) {
    print_info(&cfg);
   } else if (sscanf(argv[0], "port%d", &cfg.unit) == 1) {
    if (cfg.unit < 0 || cfg.unit >= cfg.info.es_nports)
     errx(EX_USAGE, "port unit must be between 0 and %d", cfg.info.es_nports - 1);
    newmode(&cfg, 130);
   } else if (sscanf(argv[0], "vlangroup%d", &cfg.unit) == 1) {
    if (cfg.unit < 0 || cfg.unit >= cfg.info.es_nvlangroups)
     errx(EX_USAGE,
         "vlangroup unit must be between 0 and %d",
         cfg.info.es_nvlangroups - 1);
    newmode(&cfg, 128);
   } else if (strcmp(argv[0], "config") == 0) {
    newmode(&cfg, 133);
   } else if (strcmp(argv[0], "phy") == 0) {
    newmode(&cfg, 131);
   } else if (strcmp(argv[0], "reg") == 0) {
    newmode(&cfg, 129);
   } else if (strcmp(argv[0], "help") == 0) {
    usage(&cfg, argv);
   } else if (strcmp(argv[0], "atu") == 0) {
    newmode(&cfg, 134);
   } else {
    errx(EX_USAGE, "Unknown command \"%s\"", argv[0]);
   }
   break;
  case 130:
  case 133:
  case 128:
  case 134:
   for(i=0; cmds[i].name != ((void*)0); i++) {
    int r;
    if (cfg.mode == cmds[i].mode &&
        strcmp(argv[0], cmds[i].name) == 0) {
     if ((cmds[i].args != -1) &&
         (argc < (cmds[i].args + 1))) {
      printf("%s needs %d argument%s\n",
          cmds[i].name, cmds[i].args,
          (cmds[i].args==1)?"":",");
      break;
     }

     r = (cmds[i].f)(&cfg, argc, argv);


     if (r == -1) {
      argc = 0;
      break;
     }


     if (r == 0)
      r = cmds[i].args;

     argc -= r;
     argv += r;
     break;
    }
   }
   if (cmds[i].name == ((void*)0)) {
    newmode(&cfg, 132);
    continue;
   }
   break;
  case 129:
   if (set_register(&cfg, argv[0]) != 0) {
    newmode(&cfg, 132);
    continue;
   }
   break;
  case 131:
   if (set_phyregister(&cfg, argv[0]) != 0) {
    newmode(&cfg, 132);
    continue;
   }
   break;
  }
  argc--;
  argv++;
 }

 newmode(&cfg, 132);
 close(cfg.fd);
 return (0);
}
