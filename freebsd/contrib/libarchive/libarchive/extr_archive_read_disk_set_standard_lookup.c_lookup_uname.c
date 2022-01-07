
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name_cache {int dummy; } ;
typedef scalar_t__ int64_t ;
typedef int id_t ;


 char const* lookup_name (struct name_cache*,int *,int ) ;
 int lookup_uname_helper ;

__attribute__((used)) static const char *
lookup_uname(void *data, int64_t uid)
{
 struct name_cache *uname_cache = (struct name_cache *)data;
 return (lookup_name(uname_cache,
      &lookup_uname_helper, (id_t)uid));
}
