
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EEXIST ;
 scalar_t__ ENOENT ;
 scalar_t__ errno ;
 int kldload (char const*) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static int
kldload_param(const char *name)
{
 int kl;

 if (strcmp(name, "linux") == 0 || strncmp(name, "linux.", 6) == 0)
  kl = kldload("linux");
 else if (strcmp(name, "sysvmsg") == 0 || strcmp(name, "sysvsem") == 0 ||
     strcmp(name, "sysvshm") == 0)
  kl = kldload(name);
 else if (strncmp(name, "allow.mount.", 12) == 0) {

  const char *modname = name + 12;

  kl = kldload(modname);
  if (kl < 0 && errno == ENOENT &&
      strncmp(modname, "no", 2) == 0)
   kl = kldload(modname + 2);
 } else {
  errno = ENOENT;
  return (-1);
 }
 if (kl < 0 && errno == EEXIST) {




  errno = ENOENT;
 }
 return kl;
}
