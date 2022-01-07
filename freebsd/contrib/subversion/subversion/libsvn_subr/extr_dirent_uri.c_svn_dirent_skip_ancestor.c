
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t apr_size_t ;


 size_t dirent_root_length (char const*,size_t) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;

const char *
svn_dirent_skip_ancestor(const char *parent_dirent,
                         const char *child_dirent)
{
  apr_size_t len = strlen(parent_dirent);
  apr_size_t root_len;

  if (0 != strncmp(parent_dirent, child_dirent, len))
    return ((void*)0);

  if (child_dirent[len] == 0)
    return "";



  root_len = dirent_root_length(child_dirent, strlen(child_dirent));
  if (root_len > len)

    return ((void*)0);
  if (child_dirent[len] == '/')


    return child_dirent + len + 1;

  if (root_len == len)

    return child_dirent + len;

  return ((void*)0);
}
