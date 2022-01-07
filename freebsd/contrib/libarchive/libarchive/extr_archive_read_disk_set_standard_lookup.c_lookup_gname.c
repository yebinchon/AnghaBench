
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name_cache {int dummy; } ;
typedef scalar_t__ int64_t ;
typedef int id_t ;


 int lookup_gname_helper ;
 char const* lookup_name (struct name_cache*,int *,int ) ;

__attribute__((used)) static const char *
lookup_gname(void *data, int64_t gid)
{
 struct name_cache *gname_cache = (struct name_cache *)data;
 return (lookup_name(gname_cache,
      &lookup_gname_helper, (id_t)gid));
}
