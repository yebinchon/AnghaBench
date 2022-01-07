
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_size_t ;



apr_size_t
svn_cstring__reverse_match_length(const char *a,
                                  const char *b,
                                  apr_size_t max_len)
{
  apr_size_t pos = 0;
  while (++pos <= max_len)
    if (a[0-pos] != b[0-pos])
      return pos - 1;



  return max_len;
}
