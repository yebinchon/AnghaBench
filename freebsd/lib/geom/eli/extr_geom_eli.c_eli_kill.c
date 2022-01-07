
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;


 int eli_is_attached (char const*) ;
 int eli_kill_detached (struct gctl_req*,char const*) ;
 int gctl_error (struct gctl_req*,char*) ;
 char* gctl_get_ascii (struct gctl_req*,char*,int) ;
 int gctl_get_int (struct gctl_req*,char*) ;
 int gctl_issue (struct gctl_req*) ;

__attribute__((used)) static void
eli_kill(struct gctl_req *req)
{
 const char *prov;
 int i, nargs, all;

 nargs = gctl_get_int(req, "nargs");
 all = gctl_get_int(req, "all");
 if (!all && nargs == 0) {
  gctl_error(req, "Too few arguments.");
  return;
 }
 for (i = 0; i < nargs; i++) {
  prov = gctl_get_ascii(req, "arg%d", i);
  if (!eli_is_attached(prov))
   eli_kill_detached(req, prov);
 }

 gctl_issue(req);
}
