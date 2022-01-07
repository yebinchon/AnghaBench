
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int tmpmd ;
struct gctl_req {int dummy; } ;
struct g_mirror_metadata {int md_dflags; int md_name; } ;


 int G_MIRROR_DISK_FLAG_INACTIVE ;
 int G_MIRROR_MAGIC ;
 int fprintf (int ,char*,char const*,...) ;
 int g_metadata_read (char const*,int *,int,int ) ;
 int g_metadata_store (char const*,int *,int) ;
 int gctl_error (struct gctl_req*,char*) ;
 char* gctl_get_ascii (struct gctl_req*,char*,...) ;
 int gctl_get_int (struct gctl_req*,char*) ;
 scalar_t__ mirror_metadata_decode (int *,struct g_mirror_metadata*) ;
 int mirror_metadata_encode (struct g_mirror_metadata*,int *) ;
 int printf (char*,char const*) ;
 int stderr ;
 scalar_t__ strcmp (int ,char const*) ;
 char* strerror (int) ;
 scalar_t__ verbose ;

__attribute__((used)) static void
mirror_activate(struct gctl_req *req)
{
 struct g_mirror_metadata md, tmpmd;
 const char *name, *path;
 int error, i, nargs;

 nargs = gctl_get_int(req, "nargs");
 if (nargs < 2) {
  gctl_error(req, "Too few arguments.");
  return;
 }
 name = gctl_get_ascii(req, "arg0");

 for (i = 1; i < nargs; i++) {
  path = gctl_get_ascii(req, "arg%d", i);
  error = g_metadata_read(path, (u_char *)&tmpmd, sizeof(tmpmd),
      G_MIRROR_MAGIC);
  if (error != 0) {
   fprintf(stderr, "Cannot read metadata from %s: %s.\n",
       path, strerror(error));
   gctl_error(req, "Not fully done.");
   continue;
  }
  if (mirror_metadata_decode((u_char *)&tmpmd, &md) != 0) {
   fprintf(stderr,
       "MD5 hash mismatch for provider %s, skipping.\n",
       path);
   gctl_error(req, "Not fully done.");
   continue;
  }
  if (strcmp(md.md_name, name) != 0) {
   fprintf(stderr,
       "Provider %s is not the mirror %s component.\n",
       path, name);
   gctl_error(req, "Not fully done.");
   continue;
  }
  md.md_dflags &= ~G_MIRROR_DISK_FLAG_INACTIVE;
  mirror_metadata_encode(&md, (u_char *)&tmpmd);
  error = g_metadata_store(path, (u_char *)&tmpmd, sizeof(tmpmd));
  if (error != 0) {
   fprintf(stderr, "Cannot write metadata from %s: %s.\n",
       path, strerror(error));
   gctl_error(req, "Not fully done.");
   continue;
  }
  if (verbose)
   printf("Provider %s activated.\n", path);
 }
}
