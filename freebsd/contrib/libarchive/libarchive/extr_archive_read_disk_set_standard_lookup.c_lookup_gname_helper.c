
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name_cache {int dummy; } ;
struct group {int gr_name; } ;
typedef scalar_t__ id_t ;
typedef int gid_t ;


 struct group* getgrgid (int ) ;
 char const* strdup (int ) ;

__attribute__((used)) static const char *
lookup_gname_helper(struct name_cache *cache, id_t id)
{
 struct group *result;
 (void)cache;

 result = getgrgid((gid_t)id);

 if (result == ((void*)0))
  return (((void*)0));

 return strdup(result->gr_name);
}
