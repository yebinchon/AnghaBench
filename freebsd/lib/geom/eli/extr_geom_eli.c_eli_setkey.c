
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {char* error; } ;
struct g_eli_metadata {int dummy; } ;


 scalar_t__ eli_is_attached (char const*) ;
 int eli_metadata_read (struct gctl_req*,char const*,struct g_eli_metadata*) ;
 int eli_setkey_attached (struct gctl_req*,struct g_eli_metadata*) ;
 int eli_setkey_detached (struct gctl_req*,char const*,struct g_eli_metadata*) ;
 int gctl_error (struct gctl_req*,char*) ;
 char* gctl_get_ascii (struct gctl_req*,char*) ;
 int gctl_get_int (struct gctl_req*,char*) ;
 int printf (char*) ;

__attribute__((used)) static void
eli_setkey(struct gctl_req *req)
{
 struct g_eli_metadata md;
 const char *prov;
 int nargs;

 nargs = gctl_get_int(req, "nargs");
 if (nargs != 1) {
  gctl_error(req, "Invalid number of arguments.");
  return;
 }
 prov = gctl_get_ascii(req, "arg0");

 if (eli_metadata_read(req, prov, &md) == -1)
  return;

 if (eli_is_attached(prov))
  eli_setkey_attached(req, &md);
 else
  eli_setkey_detached(req, prov, &md);

 if (req->error == ((void*)0) || req->error[0] == '\0') {
  printf("Note, that the master key encrypted with old keys "
      "and/or passphrase may still exists in a metadata backup "
      "file.\n");
 }
}
