
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int f_flags; char* f_mntfromname; char* f_mntonname; } ;
struct iovec {int dummy; } ;
typedef int errmsg ;


 int MNT_RDONLY ;
 int build_iovec (struct iovec**,int*,char*,char*,int) ;
 int errno ;
 scalar_t__ nmount (struct iovec*,int,int) ;
 int pwarn (char*,char*,int ,char*) ;
 int strerror (int ) ;

__attribute__((used)) static int
chkdoreload(struct statfs *mntp)
{
 struct iovec *iov;
 int iovlen;
 char errmsg[255];

 if (mntp == ((void*)0))
  return (0);

 iov = ((void*)0);
 iovlen = 0;
 errmsg[0] = '\0';





 if (mntp->f_flags & MNT_RDONLY) {
  build_iovec(&iov, &iovlen, "fstype", "ffs", 4);
  build_iovec(&iov, &iovlen, "from", mntp->f_mntfromname,
      (size_t)-1);
  build_iovec(&iov, &iovlen, "fspath", mntp->f_mntonname,
      (size_t)-1);
  build_iovec(&iov, &iovlen, "errmsg", errmsg,
      sizeof(errmsg));
  build_iovec(&iov, &iovlen, "update", ((void*)0), 0);
  build_iovec(&iov, &iovlen, "reload", ((void*)0), 0);




  build_iovec(&iov, &iovlen, "ro", ((void*)0), 0);
  if (nmount(iov, iovlen, mntp->f_flags) == 0) {
   return (0);
  }
  pwarn("mount reload of '%s' failed: %s %s\n\n",
      mntp->f_mntonname, strerror(errno), errmsg);
  return (1);
 }
 return (0);
}
