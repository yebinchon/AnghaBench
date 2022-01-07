
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devfs_rule {int dummy; } ;


 int DEVFSIO_RADD ;
 int err (int,char*) ;
 int in_rsnum ;
 int ioctl (int ,int ,struct devfs_rule*) ;
 int mpfd ;
 int rulespec_infp (int ,int ,int ) ;
 int rulespec_intok (struct devfs_rule*,int,char**,int ) ;
 int stdin ;
 scalar_t__ strcmp (char*,char*) ;
 int usage () ;

__attribute__((used)) static int
rule_add(int ac, char **av)
{
 struct devfs_rule dr;
 int rv;

 if (ac < 2)
  usage();
 if (strcmp(av[1], "-") == 0)
  rulespec_infp(stdin, DEVFSIO_RADD, in_rsnum);
 else {
  rulespec_intok(&dr, ac - 1, av + 1, in_rsnum);
  rv = ioctl(mpfd, DEVFSIO_RADD, &dr);
  if (rv == -1)
   err(1, "ioctl DEVFSIO_RADD");
 }
 return (0);
}
