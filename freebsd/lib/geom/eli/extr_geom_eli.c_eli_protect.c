
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {scalar_t__ rlim_max; scalar_t__ rlim_cur; } ;
struct gctl_req {int dummy; } ;


 int MCL_FUTURE ;
 int RLIMIT_CORE ;
 int errno ;
 int gctl_error (struct gctl_req*,char*,int ) ;
 int mlockall (int ) ;
 int setrlimit (int ,struct rlimit*) ;
 int strerror (int ) ;

__attribute__((used)) static int
eli_protect(struct gctl_req *req)
{
 struct rlimit rl;


 rl.rlim_cur = 0;
 rl.rlim_max = 0;
 if (setrlimit(RLIMIT_CORE, &rl) == -1) {
  gctl_error(req, "Cannot disable core dumps: %s.",
      strerror(errno));
  return (-1);
 }

 if (mlockall(MCL_FUTURE) == -1) {
  gctl_error(req, "Cannot lock memory: %s.", strerror(errno));
  return (-1);
 }
 return (0);
}
