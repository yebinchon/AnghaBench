
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_size_t ;



__attribute__((used)) static apr_size_t
dirent_root_length(const char *dirent, apr_size_t len)
{
  if (len >= 1 && dirent[0] == '/')
    return 1;

  return 0;
}
