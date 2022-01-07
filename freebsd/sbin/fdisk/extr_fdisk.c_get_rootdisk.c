
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct statfs {int f_mntfromname; } ;
struct TYPE_3__ {int rm_eo; int rm_so; } ;
typedef TYPE_1__ regmatch_t ;
typedef int regex_t ;
typedef int dev ;


 int NMATCHES ;
 int PATH_MAX ;
 int REG_EXTENDED ;
 int err (int,char*) ;
 int errx (int,char*,...) ;
 char* malloc (int) ;
 int memcpy (char*,int,int) ;
 int memmove (char*,char*,scalar_t__) ;
 int regcomp (int *,char*,int ) ;
 int regexec (int *,char*,int,TYPE_1__*,int ) ;
 int statfs (char*,struct statfs*) ;
 int strlcpy (char*,int,int) ;
 scalar_t__ strlen (char*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static char *
get_rootdisk(void)
{
 struct statfs rootfs;
 regex_t re;

 regmatch_t rm[2];
 char dev[PATH_MAX], *s;
 int rv;

 if (statfs("/", &rootfs) == -1)
  err(1, "statfs(\"/\")");

 if ((rv = regcomp(&re, "^(/dev/[a-z/]+[0-9]*)([sp][0-9]+)?[a-h]?(\\.journal)?$",
      REG_EXTENDED)) != 0)
  errx(1, "regcomp() failed (%d)", rv);
 strlcpy(dev, rootfs.f_mntfromname, sizeof (dev));
 if ((s = strstr(dev, ".eli")) != ((void*)0))
     memmove(s, s+4, strlen(s + 4) + 1);

 if ((rv = regexec(&re, dev, 2, rm, 0)) != 0)
  errx(1,
"mounted root fs resource doesn't match expectations (regexec returned %d)",
      rv);
 if ((s = malloc(rm[1].rm_eo - rm[1].rm_so + 1)) == ((void*)0))
  errx(1, "out of memory");
 memcpy(s, rootfs.f_mntfromname + rm[1].rm_so,
     rm[1].rm_eo - rm[1].rm_so);
 s[rm[1].rm_eo - rm[1].rm_so] = 0;

 return s;
}
