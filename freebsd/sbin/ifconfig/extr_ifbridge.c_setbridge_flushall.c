
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifbreq {int ifbr_ifsflags; } ;
struct afswtch {int dummy; } ;
typedef int req ;


 int BRDGFLUSH ;
 int IFBF_FLUSHALL ;
 scalar_t__ do_cmd (int,int ,struct ifbreq*,int,int) ;
 int err (int,char*) ;
 int memset (struct ifbreq*,int ,int) ;

__attribute__((used)) static void
setbridge_flushall(const char *val, int d, int s, const struct afswtch *afp)
{
 struct ifbreq req;

 memset(&req, 0, sizeof(req));
 req.ifbr_ifsflags = IFBF_FLUSHALL;
 if (do_cmd(s, BRDGFLUSH, &req, sizeof(req), 1) < 0)
  err(1, "BRDGFLUSH");
}
