
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct cpio {int uname_cache; } ;
typedef int id_t ;


 char const* lookup_name (struct cpio*,int *,int *,int ) ;
 int lookup_uname_helper ;

__attribute__((used)) static const char *
lookup_uname(struct cpio *cpio, uid_t uid)
{
 return (lookup_name(cpio, &cpio->uname_cache,
      &lookup_uname_helper, (id_t)uid));
}
