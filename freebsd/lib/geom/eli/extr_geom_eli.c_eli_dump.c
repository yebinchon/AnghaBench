
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;
struct g_eli_metadata {int dummy; } ;


 int eli_metadata_dump (struct g_eli_metadata*) ;
 int eli_metadata_read (int *,char const*,struct g_eli_metadata*) ;
 int gctl_error (struct gctl_req*,char*) ;
 char* gctl_get_ascii (struct gctl_req*,char*,int) ;
 int gctl_get_int (struct gctl_req*,char*) ;
 int printf (char*,...) ;

__attribute__((used)) static void
eli_dump(struct gctl_req *req)
{
 struct g_eli_metadata md;
 const char *name;
 int i, nargs;

 nargs = gctl_get_int(req, "nargs");
 if (nargs < 1) {
  gctl_error(req, "Too few arguments.");
  return;
 }

 for (i = 0; i < nargs; i++) {
  name = gctl_get_ascii(req, "arg%d", i);
  if (eli_metadata_read(((void*)0), name, &md) == -1) {
   gctl_error(req, "Not fully done.");
   continue;
  }
  printf("Metadata on %s:\n", name);
  eli_metadata_dump(&md);
  printf("\n");
 }
}
