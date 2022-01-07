
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mlink {int dform; char* dsec; char* arch; char* name; char* fsec; int gzip; int file; } ;
typedef enum form { ____Placeholder_form } form ;
struct TYPE_4__ {char* fts_path; int fts_info; int fts_level; char* fts_name; int fts_statp; } ;
typedef TYPE_1__ FTSENT ;
typedef int FTS ;


 int FORM_CAT ;
 int FORM_NONE ;
 int FORM_SRC ;



 int FTS_NOCHDIR ;
 int FTS_PHYSICAL ;
 int FTS_SKIP ;

 int HOMEBREWDIR ;
 scalar_t__ MANDOCLEVEL_SYSERR ;
 char* MANDOC_DB ;
 int PATH_MAX ;
 int basedir ;
 int exitcode ;
 int free (struct mlink*) ;
 int fts_close (int *) ;
 int fts_compare ;
 int * fts_open (char* const*,int,int ) ;
 TYPE_1__* fts_read (int *) ;
 int fts_set (int *,TYPE_1__*,int ) ;
 struct mlink* mandoc_calloc (int,int) ;
 int mlink_add (struct mlink*,int ) ;
 int * realpath (char const*,char*) ;
 int say (char const*,char*,...) ;
 int stat (char const*,int ) ;
 int strcmp (char const*,char*) ;
 int strlcpy (int ,char const*,int) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;
 char* strrchr (char*,char) ;
 char* strstr (char*,int ) ;
 int use_all ;
 int warnings ;

__attribute__((used)) static int
treescan(void)
{
 char buf[PATH_MAX];
 FTS *f;
 FTSENT *ff;
 struct mlink *mlink;
 int gzip;
 enum form dform;
 char *dsec, *arch, *fsec, *cp;
 const char *path;
 const char *argv[2];

 argv[0] = ".";
 argv[1] = ((void*)0);

 f = fts_open((char * const *)argv, FTS_PHYSICAL | FTS_NOCHDIR,
     fts_compare);
 if (f == ((void*)0)) {
  exitcode = (int)MANDOCLEVEL_SYSERR;
  say("", "&fts_open");
  return 0;
 }

 dsec = arch = ((void*)0);
 dform = FORM_NONE;

 while ((ff = fts_read(f)) != ((void*)0)) {
  path = ff->fts_path + 2;
  switch (ff->fts_info) {





  case 128:
   if (realpath(path, buf) == ((void*)0)) {
    if (warnings)
     say(path, "&realpath");
    continue;
   }
   if (strstr(buf, basedir) != buf



   ) {
    if (warnings) say("",
        "%s: outside base directory", buf);
    continue;
   }

   if (stat(path, ff->fts_statp) == -1) {
    if (warnings)
     say(path, "&stat");
    continue;
   }






  case 129:
   if ( ! strcmp(path, MANDOC_DB))
    continue;
   if ( ! use_all && ff->fts_level < 2) {
    if (warnings)
     say(path, "Extraneous file");
    continue;
   }
   gzip = 0;
   fsec = ((void*)0);
   while (fsec == ((void*)0)) {
    fsec = strrchr(ff->fts_name, '.');
    if (fsec == ((void*)0) || strcmp(fsec+1, "gz"))
     break;
    gzip = 1;
    *fsec = '\0';
    fsec = ((void*)0);
   }
   if (fsec == ((void*)0)) {
    if ( ! use_all) {
     if (warnings)
      say(path,
          "No filename suffix");
     continue;
    }
   } else if ( ! strcmp(++fsec, "html")) {
    if (warnings)
     say(path, "Skip html");
    continue;
   } else if ( ! strcmp(fsec, "ps")) {
    if (warnings)
     say(path, "Skip ps");
    continue;
   } else if ( ! strcmp(fsec, "pdf")) {
    if (warnings)
     say(path, "Skip pdf");
    continue;
   } else if ( ! use_all &&
       ((dform == FORM_SRC &&
         strncmp(fsec, dsec, strlen(dsec))) ||
        (dform == FORM_CAT && strcmp(fsec, "0")))) {
    if (warnings)
     say(path, "Wrong filename suffix");
    continue;
   } else
    fsec[-1] = '\0';

   mlink = mandoc_calloc(1, sizeof(struct mlink));
   if (strlcpy(mlink->file, path,
       sizeof(mlink->file)) >=
       sizeof(mlink->file)) {
    say(path, "Filename too long");
    free(mlink);
    continue;
   }
   mlink->dform = dform;
   mlink->dsec = dsec;
   mlink->arch = arch;
   mlink->name = ff->fts_name;
   mlink->fsec = fsec;
   mlink->gzip = gzip;
   mlink_add(mlink, ff->fts_statp);
   continue;

  case 131:
  case 130:
   break;

  default:
   if (warnings)
    say(path, "Not a regular file");
   continue;
  }

  switch (ff->fts_level) {
  case 0:

   break;
  case 1:





   cp = ff->fts_name;
   if (ff->fts_info == 130) {
    dform = FORM_NONE;
    dsec = ((void*)0);
    break;
   }

   if ( ! strncmp(cp, "man", 3)) {
    dform = FORM_SRC;
    dsec = cp + 3;
   } else if ( ! strncmp(cp, "cat", 3)) {
    dform = FORM_CAT;
    dsec = cp + 3;
   } else {
    dform = FORM_NONE;
    dsec = ((void*)0);
   }

   if (dsec != ((void*)0) || use_all)
    break;

   if (warnings)
    say(path, "Unknown directory part");
   fts_set(f, ff, FTS_SKIP);
   break;
  case 2:




   if (ff->fts_info != 130 && dsec != ((void*)0))
    arch = ff->fts_name;
   else
    arch = ((void*)0);
   break;
  default:
   if (ff->fts_info == 130 || use_all)
    break;
   if (warnings)
    say(path, "Extraneous directory part");
   fts_set(f, ff, FTS_SKIP);
   break;
  }
 }

 fts_close(f);
 return 1;
}
