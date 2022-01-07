
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct passwd {char* pw_name; } ;
struct cpio {int dummy; } ;
typedef int int64_t ;
typedef scalar_t__ id_t ;


 scalar_t__ ENOENT ;
 int cpio_i64toa (int ) ;
 scalar_t__ errno ;
 struct passwd* getpwuid (int ) ;
 int lafe_warnc (scalar_t__,char*,int ) ;

__attribute__((used)) static int
lookup_uname_helper(struct cpio *cpio, const char **name, id_t id)
{
 struct passwd *pwent;

 (void)cpio;

 errno = 0;
 pwent = getpwuid((uid_t)id);
 if (pwent == ((void*)0)) {
  if (errno && errno != ENOENT)
   lafe_warnc(errno, "getpwuid(%s) failed",
       cpio_i64toa((int64_t)id));
  return 1;
 }

 *name = pwent->pw_name;
 return 0;
}
