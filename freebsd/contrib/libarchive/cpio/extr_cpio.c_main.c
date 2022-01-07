
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_handler; scalar_t__ sa_flags; int sa_mask; } ;
struct cpio {char* buff; int buff_size; int uid_override; int gid_override; char** argv; int argc; char mode; char compress; int bytes_per_block; char* filename; int option_null; int option_append; int option_atime_restore; int add_filter; char* argument; char* format; int option_follow_links; int option_link; int option_numeric_uid_gid; char* passphrase; int quiet; int option_rename; int option_list; int return_value; int ppbuff; int destdir; int uname_cache; int gname_cache; int * matching; scalar_t__ dot; scalar_t__ verbose; int extract_flags; int * gname_override; int * uname_override; } ;
typedef int buff ;


 int ARCHIVE_EXTRACT_ACL ;
 int ARCHIVE_EXTRACT_FFLAGS ;
 int ARCHIVE_EXTRACT_NO_AUTODIR ;
 int ARCHIVE_EXTRACT_NO_OVERWRITE_NEWER ;
 int ARCHIVE_EXTRACT_OWNER ;
 int ARCHIVE_EXTRACT_PERM ;
 int ARCHIVE_EXTRACT_SECURE_NOABSOLUTEPATHS ;
 int ARCHIVE_EXTRACT_SECURE_NODOTDOT ;
 int ARCHIVE_EXTRACT_SECURE_SYMLINKS ;
 int ARCHIVE_EXTRACT_TIME ;
 int ARCHIVE_OK ;
 int LC_ALL ;
 int SIGPIPE ;
 int SIG_IGN ;
 int archive_error_string (int *) ;
 int archive_match_exclude_pattern (int *,char*) ;
 int archive_match_free (int *) ;
 int archive_match_include_pattern (int *,char*) ;
 int archive_match_include_pattern_from_file (int *,char*,int) ;
 int * archive_match_new () ;
 int cpio_getopt (struct cpio*) ;
 int errno ;
 int free (int ) ;
 int free_cache (int ) ;
 scalar_t__ geteuid () ;
 int lafe_errc (int,int ,char*,...) ;
 int lafe_setprogname (char*,char*) ;
 int lafe_warnc (int,char*,...) ;
 int long_help () ;
 int memset (struct cpio*,int ,int) ;
 int mode_in (struct cpio*) ;
 int mode_list (struct cpio*) ;
 int mode_out (struct cpio*) ;
 int mode_pass (struct cpio*,char*) ;
 char* owner_parse (char*,int*,int*) ;
 int passphrase_free (int ) ;
 int * setlocale (int ,char*) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 scalar_t__ strtol (char*,char**,int) ;
 int usage () ;
 int version () ;

int
main(int argc, char *argv[])
{
 static char buff[16384];
 struct cpio _cpio;
 struct cpio *cpio;
 const char *errmsg;
 char *tptr;
 int uid, gid;
 int opt, t;

 cpio = &_cpio;
 memset(cpio, 0, sizeof(*cpio));
 cpio->buff = buff;
 cpio->buff_size = sizeof(buff);
 lafe_setprogname(*argv, "bsdcpio");






 cpio->uid_override = -1;
 cpio->gid_override = -1;
 cpio->argv = argv;
 cpio->argc = argc;
 cpio->mode = '\0';
 cpio->verbose = 0;
 cpio->compress = '\0';
 cpio->extract_flags = ARCHIVE_EXTRACT_NO_AUTODIR;
 cpio->extract_flags |= ARCHIVE_EXTRACT_NO_OVERWRITE_NEWER;
 cpio->extract_flags |= ARCHIVE_EXTRACT_SECURE_SYMLINKS;
 cpio->extract_flags |= ARCHIVE_EXTRACT_SECURE_NODOTDOT;
 cpio->extract_flags |= ARCHIVE_EXTRACT_SECURE_NOABSOLUTEPATHS;
 cpio->extract_flags |= ARCHIVE_EXTRACT_PERM;
 cpio->extract_flags |= ARCHIVE_EXTRACT_FFLAGS;
 cpio->extract_flags |= ARCHIVE_EXTRACT_ACL;

 if (geteuid() == 0)
  cpio->extract_flags |= ARCHIVE_EXTRACT_OWNER;

 cpio->bytes_per_block = 512;
 cpio->filename = ((void*)0);

 cpio->matching = archive_match_new();
 if (cpio->matching == ((void*)0))
  lafe_errc(1, 0, "Out of memory");

 while ((opt = cpio_getopt(cpio)) != -1) {
  switch (opt) {
  case '0':
   cpio->option_null = 1;
   break;
  case 'A':
   cpio->option_append = 1;
   break;
  case 'a':
   cpio->option_atime_restore = 1;
   break;
  case 'B':
   cpio->bytes_per_block = 5120;
   break;
  case 141:
   cpio->add_filter = opt;
   break;
  case 'C':
   errno = 0;
   tptr = ((void*)0);
   t = (int)strtol(cpio->argument, &tptr, 10);
   if (errno || t <= 0 || *(cpio->argument) == '\0' ||
       tptr == ((void*)0) || *tptr != '\0') {
    lafe_errc(1, 0, "Invalid blocksize: %s",
        cpio->argument);
   }
   cpio->bytes_per_block = t;
   break;
  case 'c':
   cpio->format = "odc";
   break;
  case 'd':
   cpio->extract_flags &= ~ARCHIVE_EXTRACT_NO_AUTODIR;
   break;
  case 'E':
   if (archive_match_include_pattern_from_file(
       cpio->matching, cpio->argument,
       cpio->option_null) != ARCHIVE_OK)
    lafe_errc(1, 0, "Error : %s",
        archive_error_string(cpio->matching));
   break;
  case 'F':
   cpio->filename = cpio->argument;
   break;
  case 'f':
   if (archive_match_exclude_pattern(cpio->matching,
       cpio->argument) != ARCHIVE_OK)
    lafe_errc(1, 0, "Error : %s",
        archive_error_string(cpio->matching));
   break;
  case 140:
   cpio->compress = opt;
   break;
  case 'H':
   cpio->format = cpio->argument;
   break;
  case 'h':
   long_help();
   break;
  case 'I':
   cpio->filename = cpio->argument;
   break;
  case 'i':
   if (cpio->mode != '\0')
    lafe_errc(1, 0,
        "Cannot use both -i and -%c", cpio->mode);
   cpio->mode = opt;
   break;
  case 'J':
   cpio->compress = opt;
   break;
  case 'j':
   cpio->compress = opt;
   break;
  case 139:
   cpio->extract_flags &= ~ARCHIVE_EXTRACT_SECURE_SYMLINKS;
   cpio->extract_flags &= ~ARCHIVE_EXTRACT_SECURE_NODOTDOT;
   cpio->extract_flags &= ~ARCHIVE_EXTRACT_SECURE_NOABSOLUTEPATHS;
   break;
  case 'L':
   cpio->option_follow_links = 1;
   break;
  case 'l':
   cpio->option_link = 1;
   break;
  case 138:
  case 137:
  case 136:
  case 135:
  case 128:
   cpio->compress = opt;
   break;
  case 'm':
   cpio->extract_flags |= ARCHIVE_EXTRACT_TIME;
   break;
  case 'n':
   cpio->option_numeric_uid_gid = 1;
   break;
  case 134:
   cpio->extract_flags &= ~ARCHIVE_EXTRACT_OWNER;
   break;
  case 'O':
   cpio->filename = cpio->argument;
   break;
  case 'o':
   if (cpio->mode != '\0')
    lafe_errc(1, 0,
        "Cannot use both -o and -%c", cpio->mode);
   cpio->mode = opt;
   break;
  case 'p':
   if (cpio->mode != '\0')
    lafe_errc(1, 0,
        "Cannot use both -p and -%c", cpio->mode);
   cpio->mode = opt;
   cpio->extract_flags &= ~ARCHIVE_EXTRACT_SECURE_NODOTDOT;
   cpio->extract_flags &= ~ARCHIVE_EXTRACT_SECURE_NOABSOLUTEPATHS;
   break;
  case 133:
   cpio->passphrase = cpio->argument;
   break;
  case 132:
   cpio->extract_flags |= ARCHIVE_EXTRACT_OWNER;
   break;
  case 131:
   cpio->quiet = 1;
   break;
  case 'R':


   errmsg = owner_parse(cpio->argument, &uid, &gid);
   if (errmsg) {
    lafe_warnc(-1, "%s", errmsg);
    usage();
   }
   if (uid != -1) {
    cpio->uid_override = uid;
    cpio->uname_override = ((void*)0);
   }
   if (gid != -1) {
    cpio->gid_override = gid;
    cpio->gname_override = ((void*)0);
   }
   break;
  case 'r':
   cpio->option_rename = 1;
   break;
  case 't':
   cpio->option_list = 1;
   break;
  case 'u':
   cpio->extract_flags
       &= ~ARCHIVE_EXTRACT_NO_OVERWRITE_NEWER;
   break;
  case 130:
   cpio->add_filter = opt;
   break;
  case 'v':
   cpio->verbose++;
   break;
  case 'V':
   cpio->dot++;
   break;
  case 129:
   version();
   break;
  case 'y':
   cpio->compress = opt;
   break;
  case 'Z':
   cpio->compress = opt;
   break;
  case 'z':
   cpio->compress = opt;
   break;
  default:
   usage();
  }
 }





 if (cpio->option_list && cpio->mode == '\0')
  cpio->mode = 'i';

 if (cpio->option_list && cpio->mode != 'i')
  lafe_errc(1, 0, "Option -t requires -i");

 if (cpio->option_numeric_uid_gid && !cpio->option_list)
  lafe_errc(1, 0, "Option -n requires -it");

 if (cpio->format != ((void*)0) && cpio->mode != 'o')
  lafe_errc(1, 0, "Option --format requires -o");

 if (cpio->option_link && cpio->mode != 'p')
  lafe_errc(1, 0, "Option -l requires -p");

 if (cpio->dot && cpio->verbose)
  cpio->dot = 0;


 switch (cpio->mode) {
 case 'o':


  if (cpio->format == ((void*)0))
   cpio->format = "odc";

  mode_out(cpio);
  break;
 case 'i':
  while (*cpio->argv != ((void*)0)) {
   if (archive_match_include_pattern(cpio->matching,
       *cpio->argv) != ARCHIVE_OK)
    lafe_errc(1, 0, "Error : %s",
        archive_error_string(cpio->matching));
   --cpio->argc;
   ++cpio->argv;
  }
  if (cpio->option_list)
   mode_list(cpio);
  else
   mode_in(cpio);
  break;
 case 'p':
  if (*cpio->argv == ((void*)0) || **cpio->argv == '\0')
   lafe_errc(1, 0,
       "-p mode requires a target directory");
  mode_pass(cpio, *cpio->argv);
  break;
 default:
  lafe_errc(1, 0,
      "Must specify at least one of -i, -o, or -p");
 }

 archive_match_free(cpio->matching);
 free_cache(cpio->gname_cache);
 free_cache(cpio->uname_cache);
 free(cpio->destdir);
 passphrase_free(cpio->ppbuff);
 return (cpio->return_value);
}
