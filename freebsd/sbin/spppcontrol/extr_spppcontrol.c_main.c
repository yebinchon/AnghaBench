
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {long timeout; } ;
struct TYPE_7__ {int flags; int secret; int name; void* proto; } ;
struct TYPE_6__ {int secret; int name; void* proto; } ;
struct TYPE_8__ {int enable_vj; int enable_ipv6; TYPE_1__ lcp; TYPE_3__ hisauth; TYPE_2__ myauth; } ;
struct spppreq {uintptr_t cmd; TYPE_4__ defs; } ;
struct ifreq {scalar_t__ ifr_data; int ifr_name; } ;
typedef scalar_t__ caddr_t ;


 int AF_INET ;
 int AUTHFLAG_NOCALLOUT ;
 int AUTHFLAG_NORECHALLENGE ;
 int AUTHKEYLEN ;
 int AUTHNAMELEN ;
 int EX_DATAERR ;
 int EX_OSERR ;
 int EX_UNAVAILABLE ;
 void* PPP_CHAP ;
 void* PPP_PAP ;
 int SIOCGIFGENERIC ;
 int SIOCSIFGENERIC ;
 int SOCK_DGRAM ;
 scalar_t__ SPPPIOGDEFS ;
 scalar_t__ SPPPIOSDEFS ;
 int err (int ,char*) ;
 int errx (int ,char*,char const*) ;
 int getopt (int,char**,char*) ;
 int ioctl (int,int ,struct ifreq*) ;
 scalar_t__ optind ;
 int print_vals (char const*,struct spppreq*) ;
 int socket (int ,int ,int ) ;
 scalar_t__ startswith (char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strncpy (int ,char const*,int) ;
 long strtol (char const*,char**,int) ;
 int usage () ;

int
main(int argc, char **argv)
{
 int s, c;
 int errs = 0, verbose = 0;
 size_t off;
 long to;
 char *endp;
 const char *ifname, *cp;
 struct ifreq ifr;
 struct spppreq spr;

 while ((c = getopt(argc, argv, "v")) != -1)
  switch (c) {
  case 'v':
   verbose++;
   break;

  default:
   errs++;
   break;
  }
 argv += optind;
 argc -= optind;

 if (errs || argc < 1)
  usage();

 ifname = argv[0];
 strncpy(ifr.ifr_name, ifname, sizeof ifr.ifr_name);


 if ((s = socket(AF_INET, SOCK_DGRAM, 0)) < 0)
  err(EX_UNAVAILABLE, "ifconfig: socket");

 argc--;
 argv++;

 spr.cmd = (uintptr_t) SPPPIOGDEFS;
 ifr.ifr_data = (caddr_t)&spr;

 if (ioctl(s, SIOCGIFGENERIC, &ifr) == -1)
  err(EX_OSERR, "SIOCGIFGENERIC(SPPPIOGDEFS)");

 if (argc == 0) {

  print_vals(ifname, &spr);
  return 0;
 }



 while (argc > 0) {
  if (strncmp(argv[0], "authproto=", (off = strlen("authproto="))) == 0) {
   cp = argv[0] + off;
   if (strcmp(cp, "pap") == 0)
    spr.defs.myauth.proto =
     spr.defs.hisauth.proto = PPP_PAP;
   else if (strcmp(cp, "chap") == 0)
    spr.defs.myauth.proto =
     spr.defs.hisauth.proto = PPP_CHAP;
   else if (strcmp(cp, "none") == 0)
    spr.defs.myauth.proto =
     spr.defs.hisauth.proto = 0;
   else
    errx(EX_DATAERR, "bad auth proto: %s", cp);
  } else if (strncmp(argv[0], "myauthproto=", (off = strlen("myauthproto="))) == 0) {
   cp = argv[0] + off;
   if (strcmp(cp, "pap") == 0)
    spr.defs.myauth.proto = PPP_PAP;
   else if (strcmp(cp, "chap") == 0)
    spr.defs.myauth.proto = PPP_CHAP;
   else if (strcmp(cp, "none") == 0)
    spr.defs.myauth.proto = 0;
   else
    errx(EX_DATAERR, "bad auth proto: %s", cp);
  } else if (strncmp(argv[0], "myauthname=", (off = strlen("myauthname="))) == 0)
   strncpy(spr.defs.myauth.name, argv[0] + off,
    AUTHNAMELEN);
  else if (strncmp(argv[0], "myauthsecret=", (off = strlen("myauthsecret="))) == 0 ||
    strncmp(argv[0], "myauthkey=", (off = strlen("myauthkey="))) == 0)
   strncpy(spr.defs.myauth.secret, argv[0] + off,
    AUTHKEYLEN);
  else if (strncmp(argv[0], "hisauthproto=", (off = strlen("hisauthproto="))) == 0) {
   cp = argv[0] + off;
   if (strcmp(cp, "pap") == 0)
    spr.defs.hisauth.proto = PPP_PAP;
   else if (strcmp(cp, "chap") == 0)
    spr.defs.hisauth.proto = PPP_CHAP;
   else if (strcmp(cp, "none") == 0)
    spr.defs.hisauth.proto = 0;
   else
    errx(EX_DATAERR, "bad auth proto: %s", cp);
  } else if (strncmp(argv[0], "hisauthname=", (off = strlen("hisauthname="))) == 0)
   strncpy(spr.defs.hisauth.name, argv[0] + off,
    AUTHNAMELEN);
  else if (strncmp(argv[0], "hisauthsecret=", (off = strlen("hisauthsecret="))) == 0 ||
    strncmp(argv[0], "hisauthkey=", (off = strlen("hisauthkey="))) == 0)
   strncpy(spr.defs.hisauth.secret, argv[0] + off,
    AUTHKEYLEN);
  else if (strcmp(argv[0], "callin") == 0)
   spr.defs.hisauth.flags |= AUTHFLAG_NOCALLOUT;
  else if (strcmp(argv[0], "always") == 0)
   spr.defs.hisauth.flags &= ~AUTHFLAG_NOCALLOUT;
  else if (strcmp(argv[0], "norechallenge") == 0)
   spr.defs.hisauth.flags |= AUTHFLAG_NORECHALLENGE;
  else if (strcmp(argv[0], "rechallenge") == 0)
   spr.defs.hisauth.flags &= ~AUTHFLAG_NORECHALLENGE;
  else if (strncmp(argv[0], "lcp-timeout=", (off = strlen("lcp-timeout="))) == 0) {
   cp = argv[0] + off;
   to = strtol(cp, &endp, 10);
   if (*cp == '\0' || *endp != '\0' ||





       to < 10 || to > 20000)
    errx(EX_DATAERR, "bad lcp timeout value: %s",
         cp);
   spr.defs.lcp.timeout = to;
  } else if (strcmp(argv[0], "enable-vj") == 0)
   spr.defs.enable_vj = 1;
  else if (strcmp(argv[0], "disable-vj") == 0)
   spr.defs.enable_vj = 0;
  else if (strcmp(argv[0], "enable-ipv6") == 0)
   spr.defs.enable_ipv6 = 1;
  else if (strcmp(argv[0], "disable-ipv6") == 0)
   spr.defs.enable_ipv6 = 0;
  else
   errx(EX_DATAERR, "bad parameter: \"%s\"", argv[0]);

  argv++;
  argc--;
 }

 spr.cmd = (uintptr_t)SPPPIOSDEFS;

 if (ioctl(s, SIOCSIFGENERIC, &ifr) == -1)
  err(EX_OSERR, "SIOCSIFGENERIC(SPPPIOSDEFS)");

 if (verbose)
  print_vals(ifname, &spr);

 return 0;
}
