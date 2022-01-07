
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
typedef scalar_t__ uid_t ;
typedef int u_int ;
struct passwd {char* pw_dir; } ;


 scalar_t__ PATH_MAX ;
 int fatal (char*,...) ;
 struct passwd* getpwnam (char*) ;
 struct passwd* getpwuid (scalar_t__) ;
 int memcpy (char*,char const*,int) ;
 char* strchr (char const*,char) ;
 int strlen (char*) ;
 scalar_t__ xasprintf (char**,char*,char*,char const*,char const*) ;
 char* xstrdup (char const*) ;

char *
tilde_expand_filename(const char *filename, uid_t uid)
{
 const char *path, *sep;
 char user[128], *ret;
 struct passwd *pw;
 u_int len, slash;

 if (*filename != '~')
  return (xstrdup(filename));
 filename++;

 path = strchr(filename, '/');
 if (path != ((void*)0) && path > filename) {
  slash = path - filename;
  if (slash > sizeof(user) - 1)
   fatal("tilde_expand_filename: ~username too long");
  memcpy(user, filename, slash);
  user[slash] = '\0';
  if ((pw = getpwnam(user)) == ((void*)0))
   fatal("tilde_expand_filename: No such user %s", user);
 } else if ((pw = getpwuid(uid)) == ((void*)0))
  fatal("tilde_expand_filename: No such uid %ld", (long)uid);


 len = strlen(pw->pw_dir);
 if (len == 0 || pw->pw_dir[len - 1] != '/')
  sep = "/";
 else
  sep = "";


 if (path != ((void*)0))
  filename = path + 1;

 if (xasprintf(&ret, "%s%s%s", pw->pw_dir, sep, filename) >= PATH_MAX)
  fatal("tilde_expand_filename: Path too long");

 return (ret);
}
