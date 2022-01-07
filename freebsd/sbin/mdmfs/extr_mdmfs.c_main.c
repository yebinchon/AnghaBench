
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtpt_info {int mi_mode; int mi_have_mode; int mi_forced_pw; } ;
typedef int mi ;
typedef scalar_t__ intmax_t ;
typedef enum md_types { ____Placeholder_md_types } md_types ;


 int MD_MALLOC ;
 char* MD_NAME ;
 int MD_SWAP ;
 int MD_VNODE ;
 int S_IRWXG ;
 int S_IRWXO ;
 int S_IRWXU ;
 unsigned long ULONG_MAX ;
 int argappend (char**,char*,...) ;
 int debug ;
 int do_copy (char const*,char const*) ;
 int do_mdconfig_attach (char*,int) ;
 int do_mdconfig_attach_au (char*,int) ;
 int do_mdconfig_detach () ;
 int do_mount_md (char*,char const*) ;
 int do_mount_tmpfs (char*,char const*) ;
 int do_mtptsetup (char const*,struct mtpt_info*) ;
 int do_newfs (char*) ;
 int errx (int,char*,...) ;
 int extract_ugid (void*,struct mtpt_info*) ;
 int free (void*) ;
 int getmode (void*,int) ;
 int getopt (int,char**,char*) ;
 char const* getprogname () ;
 int isdigit (char const) ;
 int kldload (char*) ;
 int loudsubs ;
 char* mdname ;
 int mdnamelen ;
 char const* mdsuffix ;
 int memset (struct mtpt_info*,char,int) ;
 int modfind (char*) ;
 int norun ;
 void* optarg ;
 scalar_t__ optind ;
 void* path_mdconfig ;
 void* setmode (void*) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strdup (char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 unsigned long strtoul (char const*,char**,int) ;
 scalar_t__ strtoumax (char const*,char**,int ) ;
 int unit ;
 int usage () ;

int
main(int argc, char **argv)
{
 struct mtpt_info mi;
 intmax_t mdsize;
 char *mdconfig_arg, *newfs_arg,
     *mount_arg;
 enum md_types mdtype;
 bool have_mdtype, mlmac;
 bool detach, softdep, autounit, newfs;
 const char *mtpoint, *size_arg, *skel, *unitstr;
 char *p;
 int ch, idx;
 void *set;
 unsigned long ul;


 (void)memset(&mi, '\0', sizeof(mi));
 detach = 1;
 softdep = 1;
 autounit = 0;
 mlmac = 0;
 newfs = 1;
 have_mdtype = 0;
 skel = ((void*)0);
 mdtype = MD_SWAP;
 mdname = MD_NAME;
 mdnamelen = strlen(mdname);
 mdsize = 0;






 mdconfig_arg = strdup("");
 newfs_arg = strdup("");
 mount_arg = strdup("");
 size_arg = ((void*)0);


 if (strcmp(getprogname(), "mount_mfs") == 0 ||
     strcmp(getprogname(), "mfs") == 0) {

  mi.mi_mode = 01777;
  mi.mi_have_mode = 1;
 }

 while ((ch = getopt(argc, argv,
     "a:b:Cc:Dd:E:e:F:f:hi:k:LlMm:NnO:o:Pp:Ss:tT:Uv:w:X")) != -1)
  switch (ch) {
  case 'a':
   argappend(&newfs_arg, "-a %s", optarg);
   break;
  case 'b':
   argappend(&newfs_arg, "-b %s", optarg);
   break;
  case 'C':

   break;
  case 'c':
   argappend(&newfs_arg, "-c %s", optarg);
   break;
  case 'D':
   detach = 0;
   break;
  case 'd':
   argappend(&newfs_arg, "-d %s", optarg);
   break;
  case 'E':
   path_mdconfig = optarg;
   break;
  case 'e':
   argappend(&newfs_arg, "-e %s", optarg);
   break;
  case 'F':
   if (have_mdtype)
    usage();
   mdtype = MD_VNODE;
   have_mdtype = 1;
   argappend(&mdconfig_arg, "-f %s", optarg);
   break;
  case 'f':
   argappend(&newfs_arg, "-f %s", optarg);
   break;
  case 'h':
   usage();
   break;
  case 'i':
   argappend(&newfs_arg, "-i %s", optarg);
   break;
  case 'k':
   skel = optarg;
   break;
  case 'L':
   loudsubs = 1;
   break;
  case 'l':
   mlmac = 1;
   argappend(&newfs_arg, "-l");
   break;
  case 'M':
   if (have_mdtype)
    usage();
   mdtype = MD_MALLOC;
   have_mdtype = 1;
   argappend(&mdconfig_arg, "-o reserve");
   break;
  case 'm':
   argappend(&newfs_arg, "-m %s", optarg);
   break;
  case 'N':
   norun = 1;
   break;
  case 'n':
   argappend(&newfs_arg, "-n");
   break;
  case 'O':
   argappend(&newfs_arg, "-o %s", optarg);
   break;
  case 'o':
   argappend(&mount_arg, "-o %s", optarg);
   break;
  case 'P':
   newfs = 0;
   break;
  case 'p':
   if ((set = setmode(optarg)) == ((void*)0))
    usage();
   mi.mi_mode = getmode(set, S_IRWXU | S_IRWXG | S_IRWXO);
   mi.mi_have_mode = 1;
   mi.mi_forced_pw = 1;
   free(set);
   break;
  case 'S':
   softdep = 0;
   break;
  case 's':
   size_arg = optarg;
   break;
  case 't':
   argappend(&newfs_arg, "-t");
   break;
  case 'T':
   argappend(&mount_arg, "-t %s", optarg);
   break;
  case 'U':
   softdep = 1;
   break;
  case 'v':
   argappend(&newfs_arg, "-O %s", optarg);
   break;
  case 'w':
   extract_ugid(optarg, &mi);
   mi.mi_forced_pw = 1;
   break;
  case 'X':
   debug = 1;
   break;
  default:
   usage();
  }
 argc -= optind;
 argv += optind;
 if (argc < 2)
  usage();
 if (size_arg != ((void*)0)) {
  mdsize = (intmax_t)strtoumax(size_arg, &p, 0);
  if (p == size_arg || (p[0] != 0 && p[1] != 0) || mdsize < 0)
   errx(1, "invalid size '%s'", size_arg);
  switch (*p) {
  case 'p':
  case 'P':
   mdsize *= 1024;
  case 't':
  case 'T':
   mdsize *= 1024;
  case 'g':
  case 'G':
   mdsize *= 1024;
  case 'm':
  case 'M':
   mdsize *= 1024;
  case 'k':
  case 'K':
   mdsize *= 1024;
  case 'b':
  case 'B':
   break;
  case '\0':
   mdsize *= 512;
   break;
  default:
   errx(1, "invalid size suffix on '%s'", size_arg);
  }
 }







 unitstr = argv[0];
 mtpoint = argv[1];

 if (strcmp(unitstr, "auto") == 0) {
  if (mlmac)
   idx = -1;
  else if ((idx = modfind("tmpfs")) == -1)
   idx = kldload("tmpfs");
  if (idx == -1)
   unitstr = "md";
  else
   unitstr = "tmpfs";
 }

 if (strcmp(unitstr, "tmpfs") == 0) {
  if (size_arg != ((void*)0) && mdsize != 0)
   argappend(&mount_arg, "-o size=%jd", mdsize);
  do_mount_tmpfs(mount_arg, mtpoint);
 } else {
  if (size_arg != ((void*)0))
   argappend(&mdconfig_arg, "-s %jdB", mdsize);
  if (strncmp(unitstr, "/dev/", 5) == 0)
   unitstr += 5;
  if (strncmp(unitstr, mdname, mdnamelen) == 0)
   unitstr += mdnamelen;
  if (!isdigit(*unitstr)) {
   autounit = 1;
   unit = -1;
   mdsuffix = unitstr;
  } else {
   ul = strtoul(unitstr, &p, 10);
   if (ul == ULONG_MAX)
    errx(1, "bad device unit: %s", unitstr);
   unit = ul;
   mdsuffix = p;
  }

  if (!have_mdtype)
   mdtype = MD_SWAP;
  if (softdep)
   argappend(&newfs_arg, "-U");
  if (mdtype != MD_VNODE && !newfs)
   errx(1, "-P requires a vnode-backed disk");


  if (detach && !autounit)
   do_mdconfig_detach();
  if (autounit)
   do_mdconfig_attach_au(mdconfig_arg, mdtype);
  else
   do_mdconfig_attach(mdconfig_arg, mdtype);
  if (newfs)
   do_newfs(newfs_arg);
  do_mount_md(mount_arg, mtpoint);
 }

 do_mtptsetup(mtpoint, &mi);
 if (skel != ((void*)0))
  do_copy(mtpoint, skel);

 return (0);
}
