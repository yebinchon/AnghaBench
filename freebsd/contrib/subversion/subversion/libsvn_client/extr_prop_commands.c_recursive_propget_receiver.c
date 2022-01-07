
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct recursive_propget_receiver_baton {int pool; int props; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int * SVN_NO_ERROR ;
 scalar_t__ apr_hash_count (int *) ;
 int * apr_hash_first (int *,int *) ;
 int apr_hash_this_val (int *) ;
 int apr_pstrdup (int ,char const*) ;
 int svn_hash_sets (int ,int ,int ) ;
 int svn_string_dup (int ,int ) ;

__attribute__((used)) static svn_error_t *
recursive_propget_receiver(void *baton,
                           const char *local_abspath,
                           apr_hash_t *props,
                           apr_pool_t *scratch_pool)
{
  struct recursive_propget_receiver_baton *b = baton;

  if (apr_hash_count(props))
    {
      apr_hash_index_t *hi = apr_hash_first(scratch_pool, props);
      svn_hash_sets(b->props, apr_pstrdup(b->pool, local_abspath),
                    svn_string_dup(apr_hash_this_val(hi), b->pool));
    }

  return SVN_NO_ERROR;
}
