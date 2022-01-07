
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ os_memcmp (char const*,char const*,size_t) ;
 size_t os_strlen (char const*) ;

__attribute__((used)) static int bin_str_eq(const char *val, size_t len, const char *cmp)
{
 return os_strlen(cmp) == len && os_memcmp(val, cmp, len) == 0;
}
