
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tmpl ;
struct cmd {int dummy; } ;
struct TYPE_2__ {int dev; int * template; } ;


 int MAXPATHLEN ;
 int WDC_NVME_CAP_DIAG_CMD ;
 int WDC_NVME_CAP_DIAG_OPCODE ;
 int arg_help (int,char**,struct cmd const*) ;
 scalar_t__ arg_parse (int,char**,struct cmd const*) ;
 int close (int) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int open_dev (int ,int*,int,int) ;
 TYPE_1__ opt ;
 int stderr ;
 int strlcpy (char*,int *,int) ;
 int wdc_do_dump (int,char*,char*,int ,int ,int) ;

__attribute__((used)) static void
wdc_cap_diag(const struct cmd *f, int argc, char *argv[])
{
 char tmpl[MAXPATHLEN];
  int fd;

 if (arg_parse(argc, argv, f))
  return;
 if (opt.template == ((void*)0)) {
  fprintf(stderr, "Missing template arg.\n");
  arg_help(argc, argv, f);
 }
 strlcpy(tmpl, opt.template, sizeof(tmpl));
 open_dev(opt.dev, &fd, 1, 1);
 wdc_do_dump(fd, tmpl, "cap_diag", WDC_NVME_CAP_DIAG_OPCODE,
     WDC_NVME_CAP_DIAG_CMD, 4);

 close(fd);

 exit(1);
}
