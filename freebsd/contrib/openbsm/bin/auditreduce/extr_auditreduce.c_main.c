
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint16_t ;
typedef int tm ;
typedef int timestr ;
struct tm {int tm_hour; int tm_min; int tm_sec; } ;
struct passwd {void* pw_uid; } ;
struct group {void* gr_gid; } ;
typedef scalar_t__ pid_t ;
typedef void* au_event_t ;
typedef int FILE ;


 scalar_t__ ENOSYS ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int ISOPTSET (int ,int ) ;
 int OPT_A ;
 int OPT_a ;
 int OPT_b ;
 int OPT_c ;
 int OPT_d ;
 int OPT_e ;
 int OPT_f ;
 int OPT_g ;
 int OPT_j ;
 int OPT_m ;
 int OPT_r ;
 int OPT_u ;
 int OPT_v ;
 int SETOPT (int ,int ) ;
 scalar_t__ WEXITSTATUS (int) ;
 int bzero (struct tm*,int) ;
 int cap_enter () ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int errx (int,char*,...) ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ fork () ;
 int getauditflagsbin (int ,int *) ;
 void** getauevnonam (int ) ;
 struct group* getgrnam (int ) ;
 int getopt (int,char**,char*) ;
 struct passwd* getpwnam (int ) ;
 void** malloc (int) ;
 int maskp ;
 void* mktime (struct tm*) ;
 int optarg ;
 scalar_t__ optind ;
 int opttochk ;
 void* p_atime ;
 void* p_auid ;
 void* p_btime ;
 void* p_egid ;
 void* p_euid ;
 void** p_evec ;
 int p_evec_alloc ;
 int p_evec_used ;
 void* p_rgid ;
 void* p_ruid ;
 void* p_subid ;
 int parse_object_type (int ,char*) ;
 void** realloc (void**,int) ;
 int select_records (int *) ;
 int * stdin ;
 char* strchr (int ,char) ;
 int strftime (char*,int,char*,struct tm*) ;
 int strptime (int ,char*,struct tm*) ;
 void* strtol (int ,char**,int) ;
 int usage (char*) ;
 scalar_t__ waitpid (scalar_t__,int*,int ) ;

int
main(int argc, char **argv)
{
 struct group *grp;
 struct passwd *pw;
 struct tm tm;
 au_event_t *n;
 FILE *fp;
 int i;
 char *objval, *converr;
 int ch;
 char timestr[128];
 char *fname;
 uint16_t *etp;





 converr = ((void*)0);

 while ((ch = getopt(argc, argv, "Aa:b:c:d:e:f:g:j:m:o:r:u:v")) != -1) {
  switch(ch) {
  case 'A':
   SETOPT(opttochk, OPT_A);
   break;

  case 'a':
   if (ISOPTSET(opttochk, OPT_a)) {
    usage("d is exclusive with a and b");
   }
   SETOPT(opttochk, OPT_a);
   bzero(&tm, sizeof(tm));
   strptime(optarg, "%Y%m%d%H%M%S", &tm);
   strftime(timestr, sizeof(timestr), "%Y%m%d%H%M%S",
       &tm);

   p_atime = mktime(&tm);
   break;

  case 'b':
   if (ISOPTSET(opttochk, OPT_b)) {
    usage("d is exclusive with a and b");
   }
   SETOPT(opttochk, OPT_b);
   bzero(&tm, sizeof(tm));
   strptime(optarg, "%Y%m%d%H%M%S", &tm);
   strftime(timestr, sizeof(timestr), "%Y%m%d%H%M%S",
       &tm);

   p_btime = mktime(&tm);
   break;

  case 'c':
   if (0 != getauditflagsbin(optarg, &maskp)) {

    usage("Incorrect class");
   }
   SETOPT(opttochk, OPT_c);
   break;

  case 'd':
   if (ISOPTSET(opttochk, OPT_b) || ISOPTSET(opttochk,
       OPT_a))
    usage("'d' is exclusive with 'a' and 'b'");
   SETOPT(opttochk, OPT_d);
   bzero(&tm, sizeof(tm));
   strptime(optarg, "%Y%m%d", &tm);
   strftime(timestr, sizeof(timestr), "%Y%m%d", &tm);

   p_atime = mktime(&tm);
   tm.tm_hour = 23;
   tm.tm_min = 59;
   tm.tm_sec = 59;
   strftime(timestr, sizeof(timestr), "%Y%m%d", &tm);

   p_btime = mktime(&tm);
   break;

  case 'e':
   p_euid = strtol(optarg, &converr, 10);
   if (*converr != '\0') {

    if ((pw = getpwnam(optarg)) == ((void*)0))
     break;
    p_euid = pw->pw_uid;
   }
   SETOPT(opttochk, OPT_e);
   break;

  case 'f':
   p_egid = strtol(optarg, &converr, 10);
   if (*converr != '\0') {

    if ((grp = getgrnam(optarg)) == ((void*)0))
     break;
    p_egid = grp->gr_gid;
   }
   SETOPT(opttochk, OPT_f);
   break;

  case 'g':
   p_rgid = strtol(optarg, &converr, 10);
   if (*converr != '\0') {

    if ((grp = getgrnam(optarg)) == ((void*)0))
     break;
    p_rgid = grp->gr_gid;
   }
   SETOPT(opttochk, OPT_g);
   break;

  case 'j':
   p_subid = strtol(optarg, (char **)((void*)0), 10);
   SETOPT(opttochk, OPT_j);
   break;

  case 'm':
   if (p_evec == ((void*)0)) {
    p_evec_alloc = 32;
    p_evec = malloc(sizeof(*etp) * p_evec_alloc);
    if (p_evec == ((void*)0))
     err(1, "malloc");
   } else if (p_evec_alloc == p_evec_used) {
    p_evec_alloc <<= 1;
    p_evec = realloc(p_evec,
        sizeof(*p_evec) * p_evec_alloc);
    if (p_evec == ((void*)0))
     err(1, "realloc");
   }
   etp = &p_evec[p_evec_used++];
   *etp = strtol(optarg, (char **)((void*)0), 10);
   if (*etp == 0) {

    n = getauevnonam(optarg);
    if (n == ((void*)0))
     usage("Incorrect event name");
    *etp = *n;
   }
   SETOPT(opttochk, OPT_m);
   break;

  case 'o':
   objval = strchr(optarg, '=');
   if (objval != ((void*)0)) {
    *objval = '\0';
    objval += 1;
    parse_object_type(optarg, objval);
   }
   break;

  case 'r':
   p_ruid = strtol(optarg, &converr, 10);
   if (*converr != '\0') {
    if ((pw = getpwnam(optarg)) == ((void*)0))
     break;
    p_ruid = pw->pw_uid;
   }
   SETOPT(opttochk, OPT_r);
   break;

  case 'u':
   p_auid = strtol(optarg, &converr, 10);
   if (*converr != '\0') {
    if ((pw = getpwnam(optarg)) == ((void*)0))
     break;
    p_auid = pw->pw_uid;
   }
   SETOPT(opttochk, OPT_u);
   break;

  case 'v':
   SETOPT(opttochk, OPT_v);
   break;

  case '?':
  default:
   usage("Unknown option");
  }
 }
 argv += optind;
 argc -= optind;

 if (argc == 0) {





  if (select_records(stdin) == -1)
   errx(EXIT_FAILURE,
       "Couldn't select records from stdin");
  exit(EXIT_SUCCESS);
 }




 for (i = 0; i < argc; i++) {
  fname = argv[i];
  fp = fopen(fname, "r");
  if (fp == ((void*)0))
   errx(EXIT_FAILURE, "Couldn't open %s", fname);
  if (select_records(fp) == -1)
   errx(EXIT_FAILURE, "Couldn't select records %s",
       fname);

  fclose(fp);
 }
 exit(EXIT_SUCCESS);
}
