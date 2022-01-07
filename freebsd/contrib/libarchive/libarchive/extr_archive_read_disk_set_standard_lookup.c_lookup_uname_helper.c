
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct passwd {int pw_name; } ;
struct name_cache {int dummy; } ;
typedef scalar_t__ id_t ;


 struct passwd* getpwuid (int ) ;
 char const* strdup (int ) ;

__attribute__((used)) static const char *
lookup_uname_helper(struct name_cache *cache, id_t id)
{
 struct passwd *result;
 (void)cache;

 result = getpwuid((uid_t)id);

 if (result == ((void*)0))
  return (((void*)0));

 return strdup(result->pw_name);
}
