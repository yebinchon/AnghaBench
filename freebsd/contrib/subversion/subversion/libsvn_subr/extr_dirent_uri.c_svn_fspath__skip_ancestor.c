
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 int svn_fspath__is_canonical (char const*) ;
 char const* svn_relpath_skip_ancestor (char const*,char const*) ;

const char *
svn_fspath__skip_ancestor(const char *parent_fspath,
                          const char *child_fspath)
{
  assert(svn_fspath__is_canonical(parent_fspath));
  assert(svn_fspath__is_canonical(child_fspath));

  return svn_relpath_skip_ancestor(parent_fspath + 1, child_fspath + 1);
}
