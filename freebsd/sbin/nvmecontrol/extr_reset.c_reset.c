
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmd {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int NVME_RESET_CONTROLLER ;
 int arg_parse (int,char**,struct cmd const*) ;
 int err (int,char*,char*) ;
 int exit (int ) ;
 scalar_t__ ioctl (int,int ) ;
 int open_dev (int ,int*,int,int) ;
 TYPE_1__ opt ;
 size_t optind ;

__attribute__((used)) static void
reset(const struct cmd *f, int argc, char *argv[])
{
 int fd;

 arg_parse(argc, argv, f);
 open_dev(opt.dev, &fd, 1, 1);

 if (ioctl(fd, NVME_RESET_CONTROLLER) < 0)
  err(1, "reset request to %s failed", argv[optind]);

 exit(0);
}
