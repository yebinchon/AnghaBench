
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct gctl_req {int dummy; } ;
struct g_eli_metadata {int md_provsize; scalar_t__ md_version; } ;
typedef int ssize_t ;
typedef int off_t ;




 int G_ELI_VERSION ;
 int eli_metadata_decode (unsigned char*,struct g_eli_metadata*) ;
 int eli_metadata_store (struct gctl_req*,char const*,struct g_eli_metadata*) ;
 int eli_trash_metadata (struct gctl_req*,char const*,int,int) ;
 int errno ;
 int explicit_bzero (unsigned char*,int) ;
 int free (unsigned char*) ;
 int g_close (int) ;
 int g_mediasize (int) ;
 int g_open (char const*,int) ;
 int g_sectorsize (int) ;
 int gctl_error (struct gctl_req*,char*,...) ;
 char* gctl_get_ascii (struct gctl_req*,char*) ;
 int gctl_get_int (struct gctl_req*,char*) ;
 int gctl_get_intmax (struct gctl_req*,char*) ;
 unsigned char* malloc (int) ;
 int pread (int,unsigned char*,int,int) ;
 int strerror (int) ;

__attribute__((used)) static void
eli_resize(struct gctl_req *req)
{
 struct g_eli_metadata md;
 const char *prov;
 unsigned char *sector;
 ssize_t secsize;
 off_t mediasize, oldsize;
 int error, nargs, provfd;

 nargs = gctl_get_int(req, "nargs");
 if (nargs != 1) {
  gctl_error(req, "Invalid number of arguments.");
  return;
 }
 prov = gctl_get_ascii(req, "arg0");

 provfd = -1;
 sector = ((void*)0);
 secsize = 0;

 provfd = g_open(prov, 1);
 if (provfd == -1) {
  gctl_error(req, "Cannot open %s: %s.", prov, strerror(errno));
  goto out;
 }

 mediasize = g_mediasize(provfd);
 secsize = g_sectorsize(provfd);
 if (mediasize == -1 || secsize == -1) {
  gctl_error(req, "Cannot get information about %s: %s.", prov,
      strerror(errno));
  goto out;
 }

 sector = malloc(secsize);
 if (sector == ((void*)0)) {
  gctl_error(req, "Cannot allocate memory.");
  goto out;
 }

 oldsize = gctl_get_intmax(req, "oldsize");
 if (oldsize < 0 || oldsize > mediasize) {
  gctl_error(req, "Invalid oldsize: Out of range.");
  goto out;
 }
 if (oldsize == mediasize) {
  gctl_error(req, "Size hasn't changed.");
  goto out;
 }


 if (pread(provfd, sector, secsize, oldsize - secsize) != secsize) {
  gctl_error(req, "Cannot read old metadata: %s.",
      strerror(errno));
  goto out;
 }


 error = eli_metadata_decode(sector, &md);
 switch (error) {
 case 0:
  break;
 case 128:
  gctl_error(req,
      "Provider's %s metadata version %u is too new.\n"
      "geli: The highest supported version is %u.",
      prov, (unsigned int)md.md_version, G_ELI_VERSION);
  goto out;
 case 129:
  gctl_error(req, "Inconsistent provider's %s metadata.", prov);
  goto out;
 default:
  gctl_error(req,
      "Unexpected error while decoding provider's %s metadata: %s.",
      prov, strerror(error));
  goto out;
 }





 if (md.md_provsize != (uint64_t)oldsize) {
  gctl_error(req, "Provider size mismatch at oldsize.");
  goto out;
 }





 md.md_provsize = mediasize;

 (void)eli_metadata_store(req, prov, &md);

 (void)eli_trash_metadata(req, prov, provfd, oldsize - secsize);
out:
 if (provfd != -1)
  (void)g_close(provfd);
 if (sector != ((void*)0)) {
  explicit_bzero(sector, secsize);
  free(sector);
 }
}
