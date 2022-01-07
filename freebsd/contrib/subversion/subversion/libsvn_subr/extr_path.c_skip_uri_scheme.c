
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t apr_size_t ;



__attribute__((used)) static const char *
skip_uri_scheme(const char *path)
{
  apr_size_t j;


  for (j = 0; path[j] && path[j] != ':'; ++j)
    if (path[j] == '/')
      return ((void*)0);

  if (j > 0 && path[j] == ':' && path[j+1] == '/' && path[j+2] == '/')
    return path + j + 3;

  return ((void*)0);
}
