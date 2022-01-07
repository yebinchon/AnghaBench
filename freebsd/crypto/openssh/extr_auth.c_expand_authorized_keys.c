
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uidstr ;
struct passwd {char* pw_dir; int pw_name; scalar_t__ pw_uid; } ;
typedef int ret ;


 int PATH_MAX ;
 int fatal (char*) ;
 int free (char*) ;
 char* percent_expand (char const*,char*,char*,char*,int ,char*,char*,char*) ;
 int snprintf (char*,int,char*,...) ;
 char* xstrdup (char*) ;

char *
expand_authorized_keys(const char *filename, struct passwd *pw)
{
 char *file, uidstr[32], ret[PATH_MAX];
 int i;

 snprintf(uidstr, sizeof(uidstr), "%llu",
     (unsigned long long)pw->pw_uid);
 file = percent_expand(filename, "h", pw->pw_dir,
     "u", pw->pw_name, "U", uidstr, (char *)((void*)0));





 if (*file == '/')
  return (file);

 i = snprintf(ret, sizeof(ret), "%s/%s", pw->pw_dir, file);
 if (i < 0 || (size_t)i >= sizeof(ret))
  fatal("expand_authorized_keys: path too long");
 free(file);
 return (xstrdup(ret));
}
