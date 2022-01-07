
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifbreq {int ifbr_ifsname; } ;
struct afswtch {int dummy; } ;
typedef int req ;


 int BRDGADD ;
 scalar_t__ do_cmd (int,int ,struct ifbreq*,int,int) ;
 int err (int,char*,char const*) ;
 int memset (struct ifbreq*,int ,int) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static void
setbridge_add(const char *val, int d, int s, const struct afswtch *afp)
{
 struct ifbreq req;

 memset(&req, 0, sizeof(req));
 strlcpy(req.ifbr_ifsname, val, sizeof(req.ifbr_ifsname));
 if (do_cmd(s, BRDGADD, &req, sizeof(req), 1) < 0)
  err(1, "BRDGADD %s", val);
}
