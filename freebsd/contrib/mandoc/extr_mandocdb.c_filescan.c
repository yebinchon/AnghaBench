
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct mlink {char* file; char* dsec; char* arch; char* fsec; char* name; int dform; } ;
typedef int buf ;


 int FORM_CAT ;
 int FORM_NONE ;
 int FORM_SRC ;
 char* HOMEBREWDIR ;
 scalar_t__ MANDOCLEVEL_BADARG ;
 scalar_t__ OP_TEST ;
 int PATH_MAX ;
 int S_IFLNK ;
 int S_IFREG ;
 int assert (int ) ;
 char* basedir ;
 int exitcode ;
 int free (struct mlink*) ;
 int lstat (char const*,struct stat*) ;
 struct mlink* mandoc_calloc (int,int) ;
 int mlink_add (struct mlink*,struct stat*) ;
 scalar_t__ op ;
 int * realpath (char const*,char*) ;
 int say (char const*,char*,...) ;
 int stat (char*,struct stat*) ;
 char* strchr (char*,char) ;
 int strlcpy (char*,char const*,int) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 char* strrchr (char*,char) ;
 char* strstr (char*,char*) ;
 int use_all ;

__attribute__((used)) static void
filescan(const char *file)
{
 char buf[PATH_MAX];
 struct stat st;
 struct mlink *mlink;
 char *p, *start;

 assert(use_all);

 if (0 == strncmp(file, "./", 2))
  file += 2;
 if (-1 == lstat(file, &st)) {
  exitcode = (int)MANDOCLEVEL_BADARG;
  say(file, "&lstat");
  return;
 } else if (0 == ((S_IFREG | S_IFLNK) & st.st_mode)) {
  exitcode = (int)MANDOCLEVEL_BADARG;
  say(file, "Not a regular file");
  return;
 }





 if (((void*)0) == realpath(file, buf)) {
  exitcode = (int)MANDOCLEVEL_BADARG;
  say(file, "&realpath");
  return;
 }

 if (OP_TEST == op)
  start = buf;
 else if (strstr(buf, basedir) == buf)
  start = buf + strlen(basedir);




 else {
  exitcode = (int)MANDOCLEVEL_BADARG;
  say("", "%s: outside base directory", buf);
  return;
 }
 if (S_IFLNK & st.st_mode) {
  if (-1 == stat(buf, &st)) {
   exitcode = (int)MANDOCLEVEL_BADARG;
   say(file, "&stat");
   return;
  }
  if (strlcpy(buf, file, sizeof(buf)) >= sizeof(buf)) {
   say(file, "Filename too long");
   return;
  }
  start = buf;
  if (OP_TEST != op && strstr(buf, basedir) == buf)
   start += strlen(basedir);
 }

 mlink = mandoc_calloc(1, sizeof(struct mlink));
 mlink->dform = FORM_NONE;
 if (strlcpy(mlink->file, start, sizeof(mlink->file)) >=
     sizeof(mlink->file)) {
  say(start, "Filename too long");
  free(mlink);
  return;
 }






 if (op == OP_TEST || (start == buf && *start == '/')) {
  if (strncmp(buf, "man/", 4) == 0)
   start = buf + 4;
  else if ((start = strstr(buf, "/man/")) != ((void*)0))
   start += 5;
  else
   start = buf;
 }







 if (((void*)0) != (p = strchr(start, '/'))) {
  *p++ = '\0';
  if (0 == strncmp(start, "man", 3)) {
   mlink->dform = FORM_SRC;
   mlink->dsec = start + 3;
  } else if (0 == strncmp(start, "cat", 3)) {
   mlink->dform = FORM_CAT;
   mlink->dsec = start + 3;
  }

  start = p;
  if (((void*)0) != mlink->dsec && ((void*)0) != (p = strchr(start, '/'))) {
   *p++ = '\0';
   mlink->arch = start;
   start = p;
  }
 }





 p = strrchr(start, '\0');
 while (p-- > start && '/' != *p && '.' != *p)
              ;

 if ('.' == *p) {
  *p++ = '\0';
  mlink->fsec = p;
 }





 mlink->name = start;
 if (((void*)0) != (p = strrchr(start, '/'))) {
  mlink->name = p + 1;
  *p = '\0';
 }
 mlink_add(mlink, &st);
}
