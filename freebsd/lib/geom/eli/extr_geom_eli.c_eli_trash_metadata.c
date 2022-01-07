
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;
typedef int ssize_t ;
typedef int overwrites ;
typedef int off_t ;


 unsigned int G_ELI_OVERWRITES ;
 int arc4random_buf (unsigned char*,int) ;
 int errno ;
 int free (unsigned char*) ;
 int g_flush (int) ;
 int g_sectorsize (int) ;
 int gctl_error (struct gctl_req*,char*,...) ;
 unsigned char* malloc (int) ;
 int pwrite (int,unsigned char*,int,int ) ;
 int strerror (int) ;
 int sysctlbyname (char*,unsigned int*,int*,int *,int ) ;

__attribute__((used)) static int
eli_trash_metadata(struct gctl_req *req, const char *prov, int fd, off_t offset)
{
 unsigned int overwrites;
 unsigned char *sector;
 ssize_t size;
 int error;

 size = sizeof(overwrites);
 if (sysctlbyname("kern.geom.eli.overwrites", &overwrites, &size,
     ((void*)0), 0) == -1 || overwrites == 0) {
  overwrites = G_ELI_OVERWRITES;
 }

 size = g_sectorsize(fd);
 if (size <= 0) {
  gctl_error(req, "Cannot obtain provider sector size %s: %s.",
      prov, strerror(errno));
  return (-1);
 }
 sector = malloc(size);
 if (sector == ((void*)0)) {
  gctl_error(req, "Cannot allocate %zd bytes of memory.", size);
  return (-1);
 }

 error = 0;
 do {
  arc4random_buf(sector, size);
  if (pwrite(fd, sector, size, offset) != size) {
   if (error == 0)
    error = errno;
  }
  (void)g_flush(fd);
 } while (--overwrites > 0);
 free(sector);
 if (error != 0) {
  gctl_error(req, "Cannot trash metadata on provider %s: %s.",
      prov, strerror(error));
  return (-1);
 }
 return (0);
}
