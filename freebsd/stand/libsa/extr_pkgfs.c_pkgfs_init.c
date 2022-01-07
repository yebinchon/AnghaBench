
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct package {struct package* pkg_chain; } ;
struct fs_ops {int dummy; } ;


 int EDOOFUS ;
 int O_RDONLY ;
 int close (int) ;
 int errno ;
 struct fs_ops* exclusive_file_system ;
 int new_package (int,struct package**) ;
 int open (char const*,int ) ;
 struct package* package ;
 int pkgfs_cleanup () ;
 struct fs_ops pkgfs_fsops ;

int
pkgfs_init(const char *pkgname, struct fs_ops *proto)
{
 struct package *pkg;
 int error, fd;

 pkg = ((void*)0);
 if (proto != &pkgfs_fsops)
  pkgfs_cleanup();

 exclusive_file_system = proto;

 fd = open(pkgname, O_RDONLY);

 exclusive_file_system = ((void*)0);

 if (fd == -1)
  return (errno);

 error = new_package(fd, &pkg);
 if (error) {
  close(fd);
  return (error);
 }

 if (pkg == ((void*)0))
  return (EDOOFUS);

 pkg->pkg_chain = package;
 package = pkg;
 exclusive_file_system = &pkgfs_fsops;
 return (0);
}
