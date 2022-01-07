
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t apr_size_t ;



__attribute__((used)) static apr_size_t
relpath_previous_segment(const char *relpath,
                         apr_size_t len)
{
  if (len == 0)
    return 0;

  --len;
  while (len > 0 && relpath[len] != '/')
    --len;

  return len;
}
