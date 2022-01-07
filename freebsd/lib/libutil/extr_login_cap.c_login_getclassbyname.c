
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uid_t ;
struct passwd {char* pw_dir; int pw_gid; int pw_uid; } ;
struct TYPE_6__ {int * lc_class; int * lc_cap; int * lc_style; } ;
typedef TYPE_1__ login_cap_t ;
typedef int gid_t ;


 char* LOGIN_DEFCLASS ;
 char* LOGIN_MECLASS ;
 int LOG_ERR ;
 int MAXPATHLEN ;
 int O_CLOEXEC ;
 int O_RDONLY ;
 char* _FILE_LOGIN_CONF ;
 int _secure_path (char*,int ,int ) ;
 int cgetent (int **,char**,char const*) ;
 int close (int) ;
 int free (TYPE_1__*) ;
 int getegid () ;
 int geteuid () ;
 int lc_object_count ;
 TYPE_1__* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int open (char*,int) ;
 char* path_login_conf ;
 int setegid (int ) ;
 int seteuid (int ) ;
 int snprintf (char*,int,char*,char const*,char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int * strdup (char const*) ;
 int syslog (int ,char const*,char const*,...) ;

login_cap_t *
login_getclassbyname(char const *name, const struct passwd *pwd)
{
    login_cap_t *lc;

    if ((lc = malloc(sizeof(login_cap_t))) != ((void*)0)) {
 int r, me, i = 0;
 uid_t euid = 0;
 gid_t egid = 0;
 const char *msg = ((void*)0);
 const char *dir;
 char userpath[MAXPATHLEN];

 static char *login_dbarray[] = { ((void*)0), ((void*)0), ((void*)0) };

 me = (name != ((void*)0) && strcmp(name, LOGIN_MECLASS) == 0);
 dir = (!me || pwd == ((void*)0)) ? ((void*)0) : pwd->pw_dir;






 if (dir) {
     euid = geteuid();
     egid = getegid();
     (void)setegid(pwd->pw_gid);
     (void)seteuid(pwd->pw_uid);
 }

 if (dir && snprintf(userpath, MAXPATHLEN, "%s/%s", dir,
       _FILE_LOGIN_CONF) < MAXPATHLEN) {
     if (_secure_path(userpath, pwd->pw_uid, pwd->pw_gid) != -1)
  login_dbarray[i++] = userpath;
 }



 if (_secure_path(path_login_conf, 0, 0) != -1)
     login_dbarray[i++] = path_login_conf;
 login_dbarray[i] = ((void*)0);

 memset(lc, 0, sizeof(login_cap_t));
 lc->lc_cap = lc->lc_class = lc->lc_style = ((void*)0);

 if (name == ((void*)0) || *name == '\0')
     name = LOGIN_DEFCLASS;

 switch (cgetent(&lc->lc_cap, login_dbarray, name)) {
 case -1:
     if (me)
  break;
     if (i == 0)
         r = -1;
     else if ((r = open(login_dbarray[0], O_RDONLY | O_CLOEXEC)) >= 0)
         close(r);





     if (r >= 0 || strcmp(name, LOGIN_DEFCLASS) != 0)
  syslog(LOG_ERR, "login_getclass: unknown class '%s'", name);

     name = LOGIN_DEFCLASS;
     msg = "%s: no default/fallback class '%s'";
     if (cgetent(&lc->lc_cap, login_dbarray, name) != 0 && r >= 0)
  break;

 case 0:
     if ((lc->lc_class = strdup(name)) != ((void*)0)) {
  if (dir) {
      (void)seteuid(euid);
      (void)setegid(egid);
  }
  ++lc_object_count;
  return lc;
     }
     msg = "%s: strdup: %m";
     break;
 case -2:
     msg = "%s: retrieving class information: %m";
     break;
 case -3:
     msg = "%s: 'tc=' reference loop '%s'";
     break;
 case 1:
     msg = "couldn't resolve 'tc=' reference in '%s'";
     break;
 default:
     msg = "%s: unexpected cgetent() error '%s': %m";
     break;
 }
 if (dir) {
     (void)seteuid(euid);
     (void)setegid(egid);
 }
 if (msg != ((void*)0))
     syslog(LOG_ERR, msg, "login_getclass", name);
 free(lc);
    }

    return ((void*)0);
}
