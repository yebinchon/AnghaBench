
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifbreq {int ifbr_ifsflags; int ifbr_ifsname; } ;
typedef int req ;


 int BRDGGIFFLGS ;
 int BRDGSIFFLGS ;
 scalar_t__ do_cmd (int,int ,struct ifbreq*,int,int) ;
 int err (int,char*) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static void
do_bridgeflag(int sock, const char *ifs, int flag, int set)
{
 struct ifbreq req;

 strlcpy(req.ifbr_ifsname, ifs, sizeof(req.ifbr_ifsname));

 if (do_cmd(sock, BRDGGIFFLGS, &req, sizeof(req), 0) < 0)
  err(1, "unable to get bridge flags");

 if (set)
  req.ifbr_ifsflags |= flag;
 else
  req.ifbr_ifsflags &= ~flag;

 if (do_cmd(sock, BRDGSIFFLGS, &req, sizeof(req), 1) < 0)
  err(1, "unable to set bridge flags");
}
