
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _citrus_lookup_simple (char const*,char const*,char*,size_t,int) ;

__attribute__((used)) static __inline const char *
_citrus_lookup_alias(const char *path, const char *key, char *buf, size_t n,
    int ignore_case)
{
 const char *ret;

 ret = _citrus_lookup_simple(path, key, buf, n, ignore_case);
 if (ret == ((void*)0))
  ret = key;

 return (ret);
}
