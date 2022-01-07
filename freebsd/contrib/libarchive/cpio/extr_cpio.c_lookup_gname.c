
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpio {int gname_cache; } ;
typedef int id_t ;
typedef scalar_t__ gid_t ;


 int lookup_gname_helper ;
 char const* lookup_name (struct cpio*,int *,int *,int ) ;

__attribute__((used)) static const char *
lookup_gname(struct cpio *cpio, gid_t gid)
{
 return (lookup_name(cpio, &cpio->gname_cache,
      &lookup_gname_helper, (id_t)gid));
}
