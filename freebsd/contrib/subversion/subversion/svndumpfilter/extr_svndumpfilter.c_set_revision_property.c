
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_error_t ;
struct revision_baton_t {int props; } ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int * apr_hash_pool_get (int ) ;
 int apr_pstrdup (int *,char const*) ;
 int svn_hash_sets (int ,int ,int ) ;
 int svn_string_dup (int const*,int *) ;

__attribute__((used)) static svn_error_t *
set_revision_property(void *revision_baton,
                      const char *name,
                      const svn_string_t *value)
{
  struct revision_baton_t *rb = revision_baton;
  apr_pool_t *hash_pool = apr_hash_pool_get(rb->props);

  svn_hash_sets(rb->props,
                apr_pstrdup(hash_pool, name),
                svn_string_dup(value, hash_pool));
  return SVN_NO_ERROR;
}
