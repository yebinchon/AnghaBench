
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct cmd {int dummy; } ;
struct TYPE_2__ {char* dev; scalar_t__ nsid; } ;


 scalar_t__ NONE ;
 int arg_parse (int,char**,struct cmd const*) ;
 int close (int) ;
 int free (char*) ;
 int get_nsid (int,char**,scalar_t__*) ;
 int identify_ctrlr (int) ;
 int identify_ns (int,scalar_t__) ;
 int open_dev (char*,int*,int,int) ;
 TYPE_1__ opt ;

__attribute__((used)) static void
identify(const struct cmd *f, int argc, char *argv[])
{
 char *path;
 int fd;
 uint32_t nsid;

 arg_parse(argc, argv, f);

 open_dev(opt.dev, &fd, 1, 1);
 get_nsid(fd, &path, &nsid);
 if (nsid != 0) {






  close(fd);
  open_dev(path, &fd, 1, 1);
 }
 free(path);
 if (opt.nsid != NONE)
  nsid = opt.nsid;

 if (nsid == 0)
  identify_ctrlr(fd);
 else
  identify_ns(fd, nsid);
}
