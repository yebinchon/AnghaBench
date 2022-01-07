
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_uint64_t ;
typedef int apr_size_t ;



__attribute__((used)) static apr_uint64_t
get_log_change_count(const char *changes,
                     apr_size_t len)
{
  apr_size_t lines = 0;
  const char *end = changes + len;


  for (; changes < end; ++changes)
    if (*changes == '\n')
      ++lines;


  return lines / 2;
}
