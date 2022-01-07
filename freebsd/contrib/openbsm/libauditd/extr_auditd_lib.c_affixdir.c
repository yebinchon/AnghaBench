
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dir_ent {int dirname; } ;


 int EINVAL ;
 scalar_t__ FILENAME_LEN ;
 int asprintf (char**,char*,int ,char*,...) ;
 int auditd_host ;
 scalar_t__ auditd_hostlen ;
 int errno ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static char *
affixdir(char *name, struct dir_ent *dirent)
{
 char *fn = ((void*)0);




 if (strlen(name) != FILENAME_LEN) {
  errno = EINVAL;
  return (((void*)0));
 }




 if (auditd_hostlen > 0)
  asprintf(&fn, "%s/%s.%s", dirent->dirname, name, auditd_host);
 else
  asprintf(&fn, "%s/%s", dirent->dirname, name);
 return (fn);
}
