
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t apr_size_t ;



__attribute__((used)) static apr_size_t
previous_segment(const char *path,
                 apr_size_t len)
{
  if (len == 0)
    return 0;

  while (len > 0 && path[--len] != '/')
    ;

  if (len == 0 && path[0] == '/')
    return 1;
  else
    return len;
}
