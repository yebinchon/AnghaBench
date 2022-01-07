
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct ifbreq {int ifbr_priority; int ifbr_ifsname; } ;
struct afswtch {int dummy; } ;
typedef int req ;


 int BRDGSIFPRIO ;
 scalar_t__ do_cmd (int,int ,struct ifbreq*,int,int) ;
 int err (int,char*,char const*) ;
 int errx (int,char*,char const*) ;
 scalar_t__ get_val (char const*,int*) ;
 int memset (struct ifbreq*,int ,int) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static void
setbridge_ifpriority(const char *ifn, const char *pri, int s,
    const struct afswtch *afp)
{
 struct ifbreq req;
 u_long val;

 memset(&req, 0, sizeof(req));

 if (get_val(pri, &val) < 0 || (val & ~0xff) != 0)
  errx(1, "invalid value: %s", pri);

 strlcpy(req.ifbr_ifsname, ifn, sizeof(req.ifbr_ifsname));
 req.ifbr_priority = val & 0xff;

 if (do_cmd(s, BRDGSIFPRIO, &req, sizeof(req), 1) < 0)
  err(1, "BRDGSIFPRIO %s", pri);
}
