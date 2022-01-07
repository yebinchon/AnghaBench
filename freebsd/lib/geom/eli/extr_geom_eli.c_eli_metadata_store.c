
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;
struct g_eli_metadata {int dummy; } ;
typedef int sector ;


 int O_TRUNC ;
 int O_WRONLY ;
 int close (int) ;
 int eli_metadata_encode (struct g_eli_metadata*,unsigned char*) ;
 int errno ;
 int explicit_bzero (unsigned char*,int) ;
 scalar_t__ g_get_sectorsize (char const*) ;
 int g_metadata_store (char const*,unsigned char*,int) ;
 int gctl_error (struct gctl_req*,char*,char const*,int ) ;
 int open (char const*,int) ;
 int strerror (int ) ;
 int write (int,unsigned char*,int) ;

__attribute__((used)) static int
eli_metadata_store(struct gctl_req *req, const char *prov,
    struct g_eli_metadata *md)
{
 unsigned char sector[sizeof(struct g_eli_metadata)];
 int error;

 eli_metadata_encode(md, sector);
 if (g_get_sectorsize(prov) == 0) {
  int fd;


  fd = open(prov, O_WRONLY | O_TRUNC);
  if (fd == -1) {
   gctl_error(req, "Cannot open %s: %s.", prov,
       strerror(errno));
   explicit_bzero(sector, sizeof(sector));
   return (-1);
  }
  if (write(fd, sector, sizeof(sector)) != sizeof(sector)) {
   gctl_error(req, "Cannot write metadata to %s: %s.",
       prov, strerror(errno));
   explicit_bzero(sector, sizeof(sector));
   close(fd);
   return (-1);
  }
  close(fd);
 } else {

  error = g_metadata_store(prov, sector, sizeof(sector));
  if (error != 0) {
   gctl_error(req, "Cannot write metadata to %s: %s.",
       prov, strerror(errno));
   explicit_bzero(sector, sizeof(sector));
   return (-1);
  }
 }
 explicit_bzero(sector, sizeof(sector));
 return (0);
}
