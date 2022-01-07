
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t apr_size_t ;


 int assert (int ) ;
 int relpath_is_canonical (char const*) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;

const char *
svn_relpath_skip_ancestor(const char *parent_relpath,
                          const char *child_relpath)
{
  apr_size_t len = strlen(parent_relpath);

  assert(relpath_is_canonical(parent_relpath));
  assert(relpath_is_canonical(child_relpath));

  if (len == 0)
    return child_relpath;

  if (0 != strncmp(parent_relpath, child_relpath, len))
    return ((void*)0);

  if (child_relpath[len] == 0)
    return "";

  if (child_relpath[len] == '/')
    return child_relpath + len + 1;

  return ((void*)0);
}
