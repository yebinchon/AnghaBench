
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t avail_out; int avail_in; int next_in; void* next_out; } ;
struct package {size_t pkg_ofs; TYPE_1__ pkg_zs; int pkg_buf; int pkg_fd; } ;


 int EIO ;
 int PKG_BUFSIZE ;
 int Z_OK ;
 int Z_STREAM_END ;
 int Z_SYNC_FLUSH ;
 int errno ;
 int inflate (TYPE_1__*,int ) ;
 int read (int ,int ,int ) ;

__attribute__((used)) static int
get_zipped(struct package *pkg, void *buf, size_t bufsz)
{
 int c;

 pkg->pkg_zs.next_out = buf;
 pkg->pkg_zs.avail_out = bufsz;

 while (pkg->pkg_zs.avail_out) {
  if (pkg->pkg_zs.avail_in == 0) {
   c = read(pkg->pkg_fd, pkg->pkg_buf, PKG_BUFSIZE);
   if (c <= 0) {
    errno = EIO;
    return (-1);
   }
   pkg->pkg_zs.avail_in = c;
   pkg->pkg_zs.next_in = pkg->pkg_buf;
  }

  c = inflate(&pkg->pkg_zs, Z_SYNC_FLUSH);
  if (c != Z_OK && c != Z_STREAM_END) {
   errno = EIO;
   return (-1);
  }
 }

 pkg->pkg_ofs += bufsz;
 return (0);
}
