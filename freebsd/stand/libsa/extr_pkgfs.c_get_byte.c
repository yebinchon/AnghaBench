
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int avail_in; int* next_in; } ;
struct package {int* pkg_buf; TYPE_1__ pkg_zs; int pkg_fd; } ;
typedef int off_t ;


 int PKG_BUFSIZE ;
 int read (int ,int*,int ) ;

__attribute__((used)) static int
get_byte(struct package *pkg, off_t *op)
{
 int c;

 if (pkg->pkg_zs.avail_in == 0) {
  c = read(pkg->pkg_fd, pkg->pkg_buf, PKG_BUFSIZE);
  if (c <= 0)
   return (-1);
  pkg->pkg_zs.avail_in = c;
  pkg->pkg_zs.next_in = pkg->pkg_buf;
 }

 c = *pkg->pkg_zs.next_in;
 pkg->pkg_zs.next_in++;
 pkg->pkg_zs.avail_in--;
 (*op)++;
 return (c);
}
