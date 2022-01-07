
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef scalar_t__ svn_prop_kind_t ;
typedef int svn_error_t ;
struct file_baton_t {int pool; scalar_t__ properties; } ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int SVN_PROP_MERGEINFO ;
 scalar_t__ apr_hash_make (int ) ;
 int apr_pstrdup (int ,char const*) ;
 int strcmp (char const*,int ) ;
 int svn_hash_sets (scalar_t__,int ,int ) ;
 scalar_t__ svn_prop_regular_kind ;
 scalar_t__ svn_property_kind2 (char const*) ;
 int svn_string_dup (int const*,int ) ;

__attribute__((used)) static svn_error_t *
file_change_prop(void *file_baton,
                 const char *name,
                 const svn_string_t *value,
                 apr_pool_t *scratch_pool)
{
  struct file_baton_t *fb = file_baton;
  svn_prop_kind_t prop_kind;

  prop_kind = svn_property_kind2(name);

  if (prop_kind != svn_prop_regular_kind
      || ! strcmp(name, SVN_PROP_MERGEINFO))
    {

      return SVN_NO_ERROR;
    }



  if (! fb->properties)
    fb->properties = apr_hash_make(fb->pool);

  if (value != ((void*)0))
    svn_hash_sets(fb->properties, apr_pstrdup(fb->pool, name),
                  svn_string_dup(value, fb->pool));

  return SVN_NO_ERROR;
}
