
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int tmpmd ;
struct gctl_req {int dummy; } ;
struct g_label_metadata {int dummy; } ;


 int G_LABEL_MAGIC ;
 int fprintf (int ,char*,char const*,char*) ;
 int g_metadata_read (char const*,int *,int,int ) ;
 int gctl_error (struct gctl_req*,char*) ;
 char* gctl_get_ascii (struct gctl_req*,char*,int) ;
 int gctl_get_int (struct gctl_req*,char*) ;
 int label_metadata_decode (int *,struct g_label_metadata*) ;
 int label_metadata_dump (struct g_label_metadata*) ;
 int printf (char*,...) ;
 int stderr ;
 char* strerror (int) ;

__attribute__((used)) static void
label_dump(struct gctl_req *req)
{
 struct g_label_metadata md, tmpmd;
 const char *name;
 int error, i, nargs;

 nargs = gctl_get_int(req, "nargs");
 if (nargs < 1) {
  gctl_error(req, "Too few arguments.");
  return;
 }

 for (i = 0; i < nargs; i++) {
  name = gctl_get_ascii(req, "arg%d", i);
  error = g_metadata_read(name, (u_char *)&tmpmd, sizeof(tmpmd),
      G_LABEL_MAGIC);
  if (error != 0) {
   fprintf(stderr, "Can't read metadata from %s: %s.\n",
       name, strerror(error));
   gctl_error(req, "Not fully done.");
   continue;
  }
  label_metadata_decode((u_char *)&tmpmd, &md);
  printf("Metadata on %s:\n", name);
  label_metadata_dump(&md);
  printf("\n");
 }
}
