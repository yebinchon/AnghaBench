
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_dir_sep (char const) ;
 scalar_t__ strcmp (char const*,char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static size_t
test_suffix(const char *suffix, const char *src_name, size_t src_len)
{
 const size_t suffix_len = strlen(suffix);




 if (src_len <= suffix_len
   || is_dir_sep(src_name[src_len - suffix_len - 1]))
  return 0;

 if (strcmp(suffix, src_name + src_len - suffix_len) == 0)
  return src_len - suffix_len;

 return 0;
}
