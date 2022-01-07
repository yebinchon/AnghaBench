
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int keyfile ;
typedef int encryptedcore ;
typedef int core ;


 char* DECRYPTCORE_CRASHDIR ;
 scalar_t__ ENOENT ;
 int LOG_ERR ;
 int O_CREAT ;
 int O_EXCL ;
 int O_WRONLY ;
 int PATH_MAX ;
 int PJDLOG_MODE_STD ;
 int PJDLOG_MODE_SYSLOG ;
 int PJDLOG_VERIFY (int) ;
 int decrypt (int,char const*,char*,char*) ;
 scalar_t__ errno ;
 int exit (int) ;
 int getopt (int,char**,char*) ;
 scalar_t__ isdigit (int) ;
 int open (char*,int,int) ;
 char* optarg ;
 scalar_t__ optind ;
 int pjdlog_debug_set (int) ;
 int pjdlog_errno (int ,char*,...) ;
 int pjdlog_exitx (int,char*) ;
 int pjdlog_fini () ;
 int pjdlog_init (int ) ;
 int pjdlog_mode_set (int ) ;
 int pjdlog_prefix_set (char*) ;
 scalar_t__ snprintf (char*,int,char*,char const*,char const*) ;
 int strlcpy (char*,char*,int) ;
 size_t strnlen (char const*,int) ;
 int unlink (char*) ;
 int usage () ;

int
main(int argc, char **argv)
{
 char core[PATH_MAX], encryptedcore[PATH_MAX], keyfile[PATH_MAX];
 const char *crashdir, *dumpnr, *privatekey;
 int ch, debug, error, ofd;
 size_t ii;
 bool force, usesyslog;

 error = 1;

 pjdlog_init(PJDLOG_MODE_STD);
 pjdlog_prefix_set("(decryptcore) ");

 debug = 0;
 *core = '\0';
 crashdir = ((void*)0);
 dumpnr = ((void*)0);
 *encryptedcore = '\0';
 force = 0;
 *keyfile = '\0';
 privatekey = ((void*)0);
 usesyslog = 0;
 while ((ch = getopt(argc, argv, "Lc:d:e:fk:n:p:v")) != -1) {
  switch (ch) {
  case 'L':
   usesyslog = 1;
   break;
  case 'c':
   if (strlcpy(core, optarg, sizeof(core)) >= sizeof(core))
    pjdlog_exitx(1, "Core file path is too long.");
   break;
  case 'd':
   crashdir = optarg;
   break;
  case 'e':
   if (strlcpy(encryptedcore, optarg,
       sizeof(encryptedcore)) >= sizeof(encryptedcore)) {
    pjdlog_exitx(1, "Encrypted core file path is too long.");
   }
   break;
  case 'f':
   force = 1;
   break;
  case 'k':
   if (strlcpy(keyfile, optarg, sizeof(keyfile)) >=
       sizeof(keyfile)) {
    pjdlog_exitx(1, "Key file path is too long.");
   }
   break;
  case 'n':
   dumpnr = optarg;
   break;
  case 'p':
   privatekey = optarg;
   break;
  case 'v':
   debug++;
   break;
  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;

 if (argc != 0)
  usage();


 if ((crashdir != ((void*)0) || dumpnr != ((void*)0)) &&
     (*keyfile != '\0' || *encryptedcore != '\0' || *core != '\0')) {
  usage();
 }




 if (dumpnr != ((void*)0)) {
  for (ii = 0; ii < strnlen(dumpnr, PATH_MAX); ii++) {
   if (isdigit((int)dumpnr[ii]) == 0)
    usage();
  }

  if (crashdir == ((void*)0))
   crashdir = DECRYPTCORE_CRASHDIR;
  PJDLOG_VERIFY(snprintf(keyfile, sizeof(keyfile),
      "%s/key.%s", crashdir, dumpnr) > 0);
  PJDLOG_VERIFY(snprintf(core, sizeof(core),
      "%s/vmcore.%s", crashdir, dumpnr) > 0);
  PJDLOG_VERIFY(snprintf(encryptedcore, sizeof(encryptedcore),
      "%s/vmcore_encrypted.%s", crashdir, dumpnr) > 0);
 }

 if (privatekey == ((void*)0) || *keyfile == '\0' || *encryptedcore == '\0' ||
     *core == '\0') {
  usage();
 }

 if (usesyslog)
  pjdlog_mode_set(PJDLOG_MODE_SYSLOG);
 pjdlog_debug_set(debug);

 if (force && unlink(core) == -1 && errno != ENOENT) {
  pjdlog_errno(LOG_ERR, "Unable to remove old core");
  goto out;
 }
 ofd = open(core, O_WRONLY | O_CREAT | O_EXCL, 0600);
 if (ofd == -1) {
  pjdlog_errno(LOG_ERR, "Unable to open %s", core);
  goto out;
 }

 if (!decrypt(ofd, privatekey, keyfile, encryptedcore)) {
  if (unlink(core) == -1 && errno != ENOENT)
   pjdlog_errno(LOG_ERR, "Unable to remove core");
  goto out;
 }

 error = 0;
out:
 pjdlog_fini();
 exit(error);
}
