
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int devfs_rsnum ;


 int DEVFSIO_SUSE ;
 int eatonum (char*) ;
 int err (int,char*) ;
 int ioctl (int ,int ,int *) ;
 int mpfd ;
 int setprogname (char*) ;
 int usage () ;

int
ruleset_main(int ac, char **av)
{
 devfs_rsnum rsnum;
 int rv;

 setprogname("devfs ruleset");
 if (ac < 2)
  usage();
 rsnum = eatonum(av[1]);
 rv = ioctl(mpfd, DEVFSIO_SUSE, &rsnum);
 if (rv == -1)
  err(1, "ioctl DEVFSIO_SUSE");
 return (0);
}
