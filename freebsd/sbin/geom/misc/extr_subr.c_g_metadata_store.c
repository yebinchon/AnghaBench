
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int off_t ;


 int ENOMEM ;
 int assert (int) ;
 int bcopy (unsigned char const*,unsigned char*,size_t) ;
 int bzero (unsigned char*,int) ;
 int errno ;
 int free (unsigned char*) ;
 int g_close (int) ;
 int g_flush (int) ;
 int g_mediasize (int) ;
 int g_open (char const*,int) ;
 int g_sectorsize (int) ;
 unsigned char* malloc (int) ;
 int pwrite (int,unsigned char*,int,int) ;

int
g_metadata_store(const char *name, const unsigned char *md, size_t size)
{
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
 if (mediasize == -1) {
  error = errno;
  goto out;
 }
 sectorsize = g_sectorsize(fd);
 if (sectorsize == -1) {
  error = errno;
  goto out;
 }
 assert(sectorsize >= (ssize_t)size);
 sector = malloc(sectorsize);
 if (sector == ((void*)0)) {
  error = ENOMEM;
  goto out;
 }
 bcopy(md, sector, size);
 bzero(sector + size, sectorsize - size);
 if (pwrite(fd, sector, sectorsize, mediasize - sectorsize) !=
     sectorsize) {
  error = errno;
  goto out;
 }
 (void)g_flush(fd);
out:
 if (sector != ((void*)0))
  free(sector);
 (void)g_close(fd);
 return (error);
}
