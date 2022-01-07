
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uid_t ;
struct passwd {char* pw_name; char* pw_shell; int pw_fields; scalar_t__* pw_dir; scalar_t__* pw_gecos; void* pw_expire; void* pw_change; scalar_t__* pw_class; void* pw_gid; void* pw_uid; scalar_t__* pw_passwd; } ;


 scalar_t__ ERANGE ;
 unsigned long GID_MAX ;
 unsigned long UID_MAX ;
 unsigned long ULONG_MAX ;
 void* USHRT_MAX ;
 int _PWF_CHANGE ;
 int _PWF_CLASS ;
 int _PWF_DIR ;
 int _PWF_EXPIRE ;
 int _PWF_GECOS ;
 int _PWF_GID ;
 int _PWF_NAME ;
 int _PWF_PASSWD ;
 int _PWF_SHELL ;
 int _PWF_UID ;
 int _PWSCAN_MASTER ;
 int _PWSCAN_WARN ;
 void* atol (char*) ;
 int endusershell () ;
 scalar_t__ errno ;
 int * getenv (char*) ;
 char* getusershell () ;
 int pw_big_ids_warning ;
 int setusershell () ;
 int strcmp (char*,char*) ;
 void* strsep (char**,char*) ;
 unsigned long strtoul (char*,char**,int) ;
 int warnx (char*,...) ;

int
__pw_scan(char *bp, struct passwd *pw, int flags)
{
 uid_t id;
 int root;
 char *ep, *p, *sh;
 unsigned long temp;

 if (pw_big_ids_warning == -1)
  pw_big_ids_warning = getenv("PW_SCAN_BIG_IDS") == ((void*)0) ? 1 : 0;

 pw->pw_fields = 0;
 if (!(pw->pw_name = strsep(&bp, ":")))
  goto fmt;
 root = !strcmp(pw->pw_name, "root");
 if (pw->pw_name[0] && (pw->pw_name[0] != '+' || pw->pw_name[1] == '\0'))
  pw->pw_fields |= _PWF_NAME;

 if (!(pw->pw_passwd = strsep(&bp, ":")))
  goto fmt;
 if (pw->pw_passwd[0])
  pw->pw_fields |= _PWF_PASSWD;

 if (!(p = strsep(&bp, ":")))
  goto fmt;
 if (p[0])
  pw->pw_fields |= _PWF_UID;
 else {
  if (pw->pw_name[0] != '+' && pw->pw_name[0] != '-') {
   if (flags & _PWSCAN_WARN)
    warnx("no uid for user %s", pw->pw_name);
   return (0);
  }
 }
 errno = 0;
 temp = strtoul(p, &ep, 10);
 if ((temp == ULONG_MAX && errno == ERANGE) || temp > UID_MAX) {
  if (flags & _PWSCAN_WARN)
   warnx("%s > max uid value (%u)", p, UID_MAX);
  return (0);
 }
 id = temp;
 if (*ep != '\0') {
  if (flags & _PWSCAN_WARN)
   warnx("%s uid is incorrect", p);
  return (0);
 }
 if (root && id) {
  if (flags & _PWSCAN_WARN)
   warnx("root uid should be 0");
  return (0);
 }
 if (flags & _PWSCAN_WARN && pw_big_ids_warning && id > USHRT_MAX) {
  warnx("%s > recommended max uid value (%u)", p, USHRT_MAX);

 }
 pw->pw_uid = id;

 if (!(p = strsep(&bp, ":")))
  goto fmt;
 if (p[0])
  pw->pw_fields |= _PWF_GID;
 else {
  if (pw->pw_name[0] != '+' && pw->pw_name[0] != '-') {
   if (flags & _PWSCAN_WARN)
    warnx("no gid for user %s", pw->pw_name);
   return (0);
  }
 }
 errno = 0;
 temp = strtoul(p, &ep, 10);
 if ((temp == ULONG_MAX && errno == ERANGE) || temp > GID_MAX) {
  if (flags & _PWSCAN_WARN)
   warnx("%s > max gid value (%u)", p, GID_MAX);
  return (0);
 }
 id = temp;
 if (*ep != '\0') {
  if (flags & _PWSCAN_WARN)
   warnx("%s gid is incorrect", p);
  return (0);
 }
 if (flags & _PWSCAN_WARN && pw_big_ids_warning && id > USHRT_MAX) {
  warnx("%s > recommended max gid value (%u)", p, USHRT_MAX);

 }
 pw->pw_gid = id;

 if (flags & _PWSCAN_MASTER ) {
  if (!(pw->pw_class = strsep(&bp, ":")))
   goto fmt;
  if (pw->pw_class[0])
   pw->pw_fields |= _PWF_CLASS;

  if (!(p = strsep(&bp, ":")))
   goto fmt;
  if (p[0])
   pw->pw_fields |= _PWF_CHANGE;
  pw->pw_change = atol(p);

  if (!(p = strsep(&bp, ":")))
   goto fmt;
  if (p[0])
   pw->pw_fields |= _PWF_EXPIRE;
  pw->pw_expire = atol(p);
 }
 if (!(pw->pw_gecos = strsep(&bp, ":")))
  goto fmt;
 if (pw->pw_gecos[0])
  pw->pw_fields |= _PWF_GECOS;

 if (!(pw->pw_dir = strsep(&bp, ":")))
  goto fmt;
 if (pw->pw_dir[0])
  pw->pw_fields |= _PWF_DIR;

 if (!(pw->pw_shell = strsep(&bp, ":")))
  goto fmt;

 p = pw->pw_shell;
 if (root && *p) {
  for (setusershell();;) {
   if (!(sh = getusershell())) {
    if (flags & _PWSCAN_WARN)
     warnx("warning, unknown root shell");
    break;
   }
   if (!strcmp(p, sh))
    break;
  }
  endusershell();
 }
 if (p[0])
  pw->pw_fields |= _PWF_SHELL;

 if ((p = strsep(&bp, ":"))) {
fmt:
  if (flags & _PWSCAN_WARN)
   warnx("corrupted entry");
  return (0);
 }
 return (1);
}
