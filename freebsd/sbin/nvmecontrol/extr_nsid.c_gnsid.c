
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct cmd {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int arg_parse (int,char**,struct cmd const*) ;
 int close (int) ;
 int free (char*) ;
 int get_nsid (int,char**,int*) ;
 TYPE_1__ nsid_opt ;
 int open_dev (int ,int*,int,int) ;
 int printf (char*,char*,int) ;

__attribute__((used)) static void
gnsid(const struct cmd *f, int argc, char *argv[])
{
 char *path;
 int fd;
 uint32_t nsid;

 arg_parse(argc, argv, f);

 open_dev(nsid_opt.dev, &fd, 1, 1);
 get_nsid(fd, &path, &nsid);
 close(fd);
 printf("%s\t%u\n", path, nsid);
 free(path);
}
