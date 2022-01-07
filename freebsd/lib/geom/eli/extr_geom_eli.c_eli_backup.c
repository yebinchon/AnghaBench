
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;


 int eli_backup_create (struct gctl_req*,char const*,char const*) ;
 int gctl_error (struct gctl_req*,char*) ;
 char* gctl_get_ascii (struct gctl_req*,char*) ;
 int gctl_get_int (struct gctl_req*,char*) ;

__attribute__((used)) static void
eli_backup(struct gctl_req *req)
{
 const char *file, *prov;
 int nargs;

 nargs = gctl_get_int(req, "nargs");
 if (nargs != 2) {
  gctl_error(req, "Invalid number of arguments.");
  return;
 }
 prov = gctl_get_ascii(req, "arg0");
 file = gctl_get_ascii(req, "arg1");

 eli_backup_create(req, prov, file);
}
