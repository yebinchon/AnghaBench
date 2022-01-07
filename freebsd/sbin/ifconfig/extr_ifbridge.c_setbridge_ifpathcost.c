
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct ifbreq {int ifbr_path_cost; int ifbr_ifsname; } ;
struct afswtch {int dummy; } ;
typedef int req ;


 int BRDGSIFCOST ;
 scalar_t__ do_cmd (int,int ,struct ifbreq*,int,int) ;
 int err (int,char*,char const*) ;
 int errx (int,char*,char const*) ;
 scalar_t__ get_val (char const*,int *) ;
 int memset (struct ifbreq*,int ,int) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static void
setbridge_ifpathcost(const char *ifn, const char *cost, int s,
    const struct afswtch *afp)
{
 struct ifbreq req;
 u_long val;

 memset(&req, 0, sizeof(req));

 if (get_val(cost, &val) < 0)
  errx(1, "invalid value: %s", cost);

 strlcpy(req.ifbr_ifsname, ifn, sizeof(req.ifbr_ifsname));
 req.ifbr_path_cost = val;

 if (do_cmd(s, BRDGSIFCOST, &req, sizeof(req), 1) < 0)
  err(1, "BRDGSIFCOST %s", cost);
}
