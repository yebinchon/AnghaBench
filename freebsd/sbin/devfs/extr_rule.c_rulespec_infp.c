
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devfs_rule {int dummy; } ;
typedef int devfs_rsnum ;
typedef int FILE ;


 int assert (int) ;
 scalar_t__ efgetln (int *,char**) ;
 int err (int,char*) ;
 scalar_t__ ferror (int *) ;
 int free (char*) ;
 int ioctl (int ,unsigned long,struct devfs_rule*) ;
 int mpfd ;
 int rulespec_instr (struct devfs_rule*,char*,int ) ;
 int * stdin ;

__attribute__((used)) static void
rulespec_infp(FILE *fp, unsigned long request, devfs_rsnum rsnum)
{
 struct devfs_rule dr;
 char *line;
 int rv;

 assert(fp == stdin);
 while (efgetln(fp, &line)) {
  rulespec_instr(&dr, line, rsnum);
  rv = ioctl(mpfd, request, &dr);
  if (rv == -1)
   err(1, "ioctl");
  free(line);
 }
 if (ferror(stdin))
  err(1, "stdin");
}
