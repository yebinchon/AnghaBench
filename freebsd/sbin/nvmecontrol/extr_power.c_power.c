
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_controller_data {int dummy; } ;
struct cmd {int dummy; } ;
struct TYPE_2__ {scalar_t__ power; int workload; scalar_t__ list; int dev; } ;


 scalar_t__ POWER_NONE ;
 int arg_help (int,char**,struct cmd const*) ;
 int arg_parse (int,char**,struct cmd const*) ;
 int close (int) ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int open_dev (int ,int*,int,int) ;
 TYPE_1__ opt ;
 int power_list (struct nvme_controller_data*) ;
 int power_set (int,scalar_t__,int ,int ) ;
 int power_show (int) ;
 int read_controller_data (int,struct nvme_controller_data*) ;
 int stderr ;

__attribute__((used)) static void
power(const struct cmd *f, int argc, char *argv[])
{
 struct nvme_controller_data cdata;
 int fd;

 arg_parse(argc, argv, f);

 if (opt.list && opt.power != POWER_NONE) {
  fprintf(stderr, "Can't set power and list power states\n");
  arg_help(argc, argv, f);
 }

 open_dev(opt.dev, &fd, 1, 1);

 if (opt.list) {
  read_controller_data(fd, &cdata);
  power_list(&cdata);
  goto out;
 }

 if (opt.power != POWER_NONE) {
  power_set(fd, opt.power, opt.workload, 0);
  goto out;
 }
 power_show(fd);

out:
 close(fd);
 exit(0);
}
