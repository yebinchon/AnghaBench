
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct devreq {int dr_flags; int dr_name; } ;
typedef int req ;


 int EINVAL ;
 int devctl_request (int ,struct devreq*) ;
 int errno ;
 int memset (struct devreq*,int ,int) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static int
devctl_simple_request(u_long cmd, const char *name, int flags)
{
 struct devreq req;

 memset(&req, 0, sizeof(req));
 if (strlcpy(req.dr_name, name, sizeof(req.dr_name)) >=
     sizeof(req.dr_name)) {
  errno = EINVAL;
  return (-1);
 }
 req.dr_flags = flags;
 return (devctl_request(cmd, &req));
}
