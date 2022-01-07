
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct gctl_req {int dummy; } ;
struct g_label_metadata {scalar_t__ md_provsize; int * md_label; int md_version; int * md_magic; } ;
typedef int sector ;


 char const* G_LABEL_MAGIC ;
 int G_LABEL_VERSION ;
 int bzero (int *,int) ;
 int errno ;
 int fprintf (int ,char*,char const*,char*) ;
 scalar_t__ g_get_mediasize (char const*) ;
 int g_metadata_clear (char const*,int *) ;
 int g_metadata_store (char const*,int *,int) ;
 int gctl_error (struct gctl_req*,char*,...) ;
 char* gctl_get_ascii (struct gctl_req*,char*) ;
 int gctl_get_int (struct gctl_req*,char*) ;
 int label_metadata_encode (struct g_label_metadata*,int *) ;
 int printf (char*,char const*) ;
 int stderr ;
 char* strerror (int) ;
 int strlcpy (int *,char const*,int) ;
 scalar_t__ verbose ;

__attribute__((used)) static void
label_label(struct gctl_req *req)
{
 struct g_label_metadata md;
 const char *name, *label;
 u_char sector[512];
 int error, nargs;

 bzero(sector, sizeof(sector));
 nargs = gctl_get_int(req, "nargs");
 if (nargs != 2) {
  gctl_error(req, "Invalid number of arguments.");
  return;
 }




 name = gctl_get_ascii(req, "arg1");
 error = g_metadata_clear(name, ((void*)0));
 if (error != 0) {
  gctl_error(req, "Can't store metadata on %s: %s.", name,
      strerror(error));
  return;
 }

 strlcpy(md.md_magic, G_LABEL_MAGIC, sizeof(md.md_magic));
 md.md_version = G_LABEL_VERSION;
 label = gctl_get_ascii(req, "arg0");
 bzero(md.md_label, sizeof(md.md_label));
 strlcpy(md.md_label, label, sizeof(md.md_label));
 md.md_provsize = g_get_mediasize(name);
 if (md.md_provsize == 0) {
  gctl_error(req, "Can't get mediasize of %s: %s.", name,
      strerror(errno));
  return;
 }




 label_metadata_encode(&md, sector);
 error = g_metadata_store(name, sector, sizeof(sector));
 if (error != 0) {
  fprintf(stderr, "Can't store metadata on %s: %s.\n", name,
      strerror(error));
  gctl_error(req, "Not done.");
 }
 if (verbose)
  printf("Metadata value stored on %s.\n", name);
}
