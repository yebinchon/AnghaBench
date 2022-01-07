
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {char* pw_class; char* pw_name; int pw_gid; } ;
struct group {scalar_t__ gr_gid; } ;
typedef scalar_t__ gid_t ;
typedef int FILE ;


 scalar_t__ ENOENT ;
 int LOG_ERR ;
 int LOG_INFO ;
 int NGROUPS ;
 char* PATH_ALLOWFILE ;
 int err (int,int *) ;
 scalar_t__ errno ;
 int fflush (int ) ;
 char* fgetln (int *,size_t*) ;
 int * fopen (char*,char*) ;
 int fputs (char*,int ) ;
 int free (char*) ;
 struct group* getgrnam (char*) ;
 int getgrouplist (char*,int ,scalar_t__*,int*) ;
 scalar_t__ malloc (size_t) ;
 int memcpy (char*,char*,size_t) ;
 int sprintf (char*,char*,char*) ;
 int stdout ;
 scalar_t__ strcmp (char*,char*) ;
 char* strerror (scalar_t__) ;
 int syslog (int ,char*,char*,char*,...) ;

__attribute__((used)) static int
allowed_luser(struct passwd *pw)
{
 char *buf,*lbuf;
 int matched;
 size_t len;
 FILE *f;

 if ((f = fopen(PATH_ALLOWFILE, "r")) == ((void*)0)) {
  if (errno == ENOENT) {




   return (1);
  }






  syslog(LOG_ERR, "cannot open allowed users file %s (%s)",
      PATH_ALLOWFILE, strerror(errno));
  return (0);
 } else {







  int gl_init = 0, ngroups = NGROUPS + 1;
  gid_t groups[NGROUPS + 1];

  lbuf = ((void*)0);
  matched = 0;

  while ((buf = fgetln(f, &len))) {

   if (buf[len - 1] == '\n')
    buf[len - 1] = '\0';
   else {
    if ((lbuf = (char *)malloc(len + 1)) == ((void*)0))
     err(1, ((void*)0));
    memcpy(lbuf, buf, len);
    lbuf[len] = '\0';
    buf = lbuf;
   }

   if (buf[0] == '@') {

    if (strcmp(pw->pw_class, buf + 1) == 0)
     matched++;
   } else if (buf[0] == '%') {

    int cnt;
    struct group *group;

    if ((group = getgrnam(buf + 1)) == ((void*)0)) {
     syslog(LOG_ERR,
         "invalid group '%s' in %s (%s)",
         buf + 1, PATH_ALLOWFILE,
          strerror(errno));
     return (0);
    }

    if (!gl_init) {
     (void) getgrouplist(pw->pw_name,
         pw->pw_gid, groups, &ngroups);
     gl_init++;
    }

    for ( cnt = 0; cnt < ngroups; cnt++) {
     if (group->gr_gid == groups[cnt]) {
      matched++;
      break;
     }
    }
   } else {

    matched = strcmp(pw->pw_name, buf) == 0 ||
        strcmp("*", buf) == 0;
   }

   if (lbuf != ((void*)0)) {
    free(lbuf);
    lbuf = ((void*)0);
   }

   if (matched)
    return (1);
  }
  syslog(LOG_INFO, "denied access to %s: not listed in %s",
      pw->pw_name, PATH_ALLOWFILE);


  sprintf(buf, "%s", "\n\nSorry, you are not allowed to use this facility!\n");
  fputs(buf, stdout);
 }
 fflush(stdout);
 return (0);
}
