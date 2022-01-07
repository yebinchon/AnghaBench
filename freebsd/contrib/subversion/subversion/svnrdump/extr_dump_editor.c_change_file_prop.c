
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_error_t ;
struct file_baton {int dump_props; int pool; int deleted_props; int props; } ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int TRUE ;
 int apr_pstrdup (int ,char const*) ;
 int svn_hash_sets (int ,int ,char*) ;
 scalar_t__ svn_prop_regular_kind ;
 scalar_t__ svn_property_kind2 (char const*) ;
 char* svn_string_dup (int const*,int ) ;

__attribute__((used)) static svn_error_t *
change_file_prop(void *file_baton,
                 const char *name,
                 const svn_string_t *value,
                 apr_pool_t *pool)
{
  struct file_baton *fb = file_baton;

  if (svn_property_kind2(name) != svn_prop_regular_kind)
    return SVN_NO_ERROR;

  if (value)
    svn_hash_sets(fb->props,
                  apr_pstrdup(fb->pool, name),
                  svn_string_dup(value, fb->pool));
  else
    svn_hash_sets(fb->deleted_props, apr_pstrdup(fb->pool, name), "");




  fb->dump_props = TRUE;

  return SVN_NO_ERROR;
}
