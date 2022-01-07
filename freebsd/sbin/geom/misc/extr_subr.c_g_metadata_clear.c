
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct std_metadata {int md_magic; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ off_t ;


 int EINVAL ;
 int ENOMEM ;
 int bzero (unsigned char*,scalar_t__) ;
 int errno ;
 int free (unsigned char*) ;
 int g_close (int) ;
 int g_flush (int) ;
 scalar_t__ g_mediasize (int) ;
 int g_open (char const*,int) ;
 scalar_t__ g_sectorsize (int) ;
 unsigned char* malloc (scalar_t__) ;
 scalar_t__ pread (int,unsigned char*,scalar_t__,scalar_t__) ;
 scalar_t__ pwrite (int,unsigned char*,scalar_t__,scalar_t__) ;
 int std_metadata_decode (unsigned char*,struct std_metadata*) ;
 scalar_t__ strcmp (int ,char const*) ;

int
g_metadata_clear(const char *name, const char *magic)
{
 struct std_metadata md;
 unsigned char *sector;
 ssize_t sectorsize;
 off_t mediasize;
 int error, fd;

 sector = ((void*)0);
 error = 0;

 fd = g_open(name, 1);
 if (fd == -1)
  return (errno);
 mediasize = g_mediasize(fd);
 if (mediasize == 0) {
  error = errno;
  goto out;
 }
 sectorsize = g_sectorsize(fd);
 if (sectorsize <= 0) {
  error = errno;
  goto out;
 }
 sector = malloc(sectorsize);
 if (sector == ((void*)0)) {
  error = ENOMEM;
  goto out;
 }
 if (magic != ((void*)0)) {
  if (pread(fd, sector, sectorsize, mediasize - sectorsize) !=
      sectorsize) {
   error = errno;
   goto out;
  }
  std_metadata_decode(sector, &md);
  if (strcmp(md.md_magic, magic) != 0) {
   error = EINVAL;
   goto out;
  }
 }
 bzero(sector, sectorsize);
 if (pwrite(fd, sector, sectorsize, mediasize - sectorsize) !=
     sectorsize) {
  error = errno;
  goto out;
 }
 (void)g_flush(fd);
out:
 free(sector);
 g_close(fd);
 return (error);
}
