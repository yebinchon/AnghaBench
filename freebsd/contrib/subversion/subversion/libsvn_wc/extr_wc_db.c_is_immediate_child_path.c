
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;


 int strchr (char const*,char) ;
 char* svn_dirent_skip_ancestor (char const*,char const*) ;

__attribute__((used)) static svn_boolean_t
is_immediate_child_path(const char *parent_abspath, const char *child_abspath)
{
  const char *local_relpath = svn_dirent_skip_ancestor(parent_abspath,
                                                       child_abspath);



  return local_relpath && *local_relpath && !strchr(local_relpath, '/');
}
