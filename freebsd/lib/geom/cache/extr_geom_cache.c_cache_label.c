
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct gctl_req {int dummy; } ;
struct g_cache_metadata {scalar_t__ md_provsize; void* md_size; void* md_bsize; int md_name; int md_version; int md_magic; } ;
typedef int sector ;
typedef void* intmax_t ;


 char const* G_CACHE_MAGIC ;
 int G_CACHE_VERSION ;
 int bzero (int *,int) ;
 int cache_metadata_encode (struct g_cache_metadata*,int *) ;
 int errno ;
 int fprintf (int ,char*,char const*,char*) ;
 scalar_t__ g_get_mediasize (char const*) ;
 int g_metadata_store (char const*,int *,int) ;
 int gctl_error (struct gctl_req*,char*) ;
 char* gctl_get_ascii (struct gctl_req*,char*) ;
 int gctl_get_int (struct gctl_req*,char*) ;
 void* gctl_get_intmax (struct gctl_req*,char*) ;
 int printf (char*,char const*) ;
 int stderr ;
 char* strerror (int) ;
 int strlcpy (int ,char const*,int) ;
 scalar_t__ verbose ;

__attribute__((used)) static void
cache_label(struct gctl_req *req)
{
 struct g_cache_metadata md;
 u_char sector[512];
 const char *name;
 int error, nargs;
 intmax_t val;

 bzero(sector, sizeof(sector));
 nargs = gctl_get_int(req, "nargs");
 if (nargs != 2) {
  gctl_error(req, "Invalid number of arguments.");
  return;
 }

 strlcpy(md.md_magic, G_CACHE_MAGIC, sizeof(md.md_magic));
 md.md_version = G_CACHE_VERSION;
 name = gctl_get_ascii(req, "arg0");
 strlcpy(md.md_name, name, sizeof(md.md_name));
 val = gctl_get_intmax(req, "blocksize");
 md.md_bsize = val;
 val = gctl_get_intmax(req, "size");
 md.md_size = val;

 name = gctl_get_ascii(req, "arg1");
 md.md_provsize = g_get_mediasize(name);
 if (md.md_provsize == 0) {
  fprintf(stderr, "Can't get mediasize of %s: %s.\n",
      name, strerror(errno));
  gctl_error(req, "Not fully done.");
  return;
 }
 cache_metadata_encode(&md, sector);
 error = g_metadata_store(name, sector, sizeof(sector));
 if (error != 0) {
  fprintf(stderr, "Can't store metadata on %s: %s.\n",
      name, strerror(error));
  gctl_error(req, "Not fully done.");
  return;
 }
 if (verbose)
  printf("Metadata value stored on %s.\n", name);
}
