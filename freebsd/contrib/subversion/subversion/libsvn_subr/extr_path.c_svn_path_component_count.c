
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ apr_size_t ;


 int assert (int ) ;
 int is_canonical (char const*,int ) ;
 int strlen (char const*) ;

apr_size_t
svn_path_component_count(const char *path)
{
  apr_size_t count = 0;

  assert(is_canonical(path, strlen(path)));

  while (*path)
    {
      const char *start;

      while (*path == '/')
        ++path;

      start = path;

      while (*path && *path != '/')
        ++path;

      if (path != start)
        ++count;
    }

  return count;
}
