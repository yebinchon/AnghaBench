
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int G_ELI_MAGIC ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int close (int) ;
 int errno ;
 int explicit_bzero (unsigned char*,scalar_t__) ;
 int free (unsigned char*) ;
 int fsync (int) ;
 scalar_t__ g_get_sectorsize (char const*) ;
 int g_metadata_read (char const*,unsigned char*,scalar_t__,int ) ;
 int gctl_error (struct gctl_req*,char*,...) ;
 unsigned char* malloc (scalar_t__) ;
 int open (char const*,int,int) ;
 int strerror (int) ;
 int unlink (char const*) ;
 scalar_t__ write (int,unsigned char*,scalar_t__) ;

__attribute__((used)) static int
eli_backup_create(struct gctl_req *req, const char *prov, const char *file)
{
 unsigned char *sector;
 ssize_t secsize;
 int error, filefd, ret;

 ret = -1;
 filefd = -1;
 sector = ((void*)0);
 secsize = 0;

 secsize = g_get_sectorsize(prov);
 if (secsize == 0) {
  gctl_error(req, "Cannot get informations about %s: %s.", prov,
      strerror(errno));
  goto out;
 }
 sector = malloc(secsize);
 if (sector == ((void*)0)) {
  gctl_error(req, "Cannot allocate memory.");
  goto out;
 }

 error = g_metadata_read(prov, sector, secsize, G_ELI_MAGIC);
 if (error != 0) {
  gctl_error(req, "Unable to read metadata from %s: %s.", prov,
      strerror(error));
  goto out;
 }

 filefd = open(file, O_WRONLY | O_TRUNC | O_CREAT, 0600);
 if (filefd == -1) {
  gctl_error(req, "Unable to open %s: %s.", file,
      strerror(errno));
  goto out;
 }

 if (write(filefd, sector, secsize) != secsize) {
  gctl_error(req, "Unable to write to %s: %s.", file,
      strerror(errno));
  (void)close(filefd);
  (void)unlink(file);
  goto out;
 }
 (void)fsync(filefd);
 (void)close(filefd);

 ret = 0;
out:
 if (sector != ((void*)0)) {
  explicit_bzero(sector, secsize);
  free(sector);
 }
 return (ret);
}
