
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct dump_filter_baton_t {scalar_t__ do_exclude; int prefixes; scalar_t__ glob; } ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int ary_prefix_match (int ,char const*) ;
 int svn_cstring_match_glob_list (char const*,int ) ;

__attribute__((used)) static svn_error_t *
dump_filter_func(svn_boolean_t *include,
                 svn_fs_root_t *root,
                 const char *path,
                 void *baton,
                 apr_pool_t *scratch_pool)
{
  struct dump_filter_baton_t *b = baton;
  const svn_boolean_t matches =
    (b->glob
     ? svn_cstring_match_glob_list(path, b->prefixes)
     : ary_prefix_match(b->prefixes, path));

  *include = b->do_exclude ? !matches : matches;
  return SVN_NO_ERROR;
}
