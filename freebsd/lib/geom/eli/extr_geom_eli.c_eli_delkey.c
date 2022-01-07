
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;


 int eli_delkey_attached (struct gctl_req*,char const*) ;
 int eli_delkey_detached (struct gctl_req*,char const*) ;
 scalar_t__ eli_is_attached (char const*) ;
 int gctl_error (struct gctl_req*,char*) ;
 char* gctl_get_ascii (struct gctl_req*,char*) ;
 int gctl_get_int (struct gctl_req*,char*) ;

__attribute__((used)) static void
eli_delkey(struct gctl_req *req)
{
 const char *prov;
 int nargs;

 nargs = gctl_get_int(req, "nargs");
 if (nargs != 1) {
  gctl_error(req, "Invalid number of arguments.");
  return;
 }
 prov = gctl_get_ascii(req, "arg0");

 if (eli_is_attached(prov))
  eli_delkey_attached(req, prov);
 else
  eli_delkey_detached(req, prov);
}
