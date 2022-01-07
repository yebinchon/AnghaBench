
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {char* gr_name; } ;
struct cpio {int dummy; } ;
typedef int int64_t ;
typedef scalar_t__ id_t ;
typedef int gid_t ;


 scalar_t__ ENOENT ;
 int cpio_i64toa (int ) ;
 scalar_t__ errno ;
 struct group* getgrgid (int ) ;
 int lafe_warnc (scalar_t__,char*,int ) ;

__attribute__((used)) static int
lookup_gname_helper(struct cpio *cpio, const char **name, id_t id)
{
 struct group *grent;

 (void)cpio;

 errno = 0;
 grent = getgrgid((gid_t)id);
 if (grent == ((void*)0)) {
  if (errno && errno != ENOENT)
   lafe_warnc(errno, "getgrgid(%s) failed",
       cpio_i64toa((int64_t)id));
  return 1;
 }

 *name = grent->gr_name;
 return 0;
}
