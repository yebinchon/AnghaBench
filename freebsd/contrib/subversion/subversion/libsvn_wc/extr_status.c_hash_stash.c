
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_wc_status3_t ;
struct TYPE_2__ {int op_root; int has_descendants; } ;
typedef TYPE_1__ svn_wc__internal_status_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int * SVN_NO_ERROR ;
 int * apr_hash_pool_get (int *) ;
 int apr_pstrdup (int *,char const*) ;
 int assert (int) ;
 int svn_hash_gets (int *,char const*) ;
 int svn_hash_sets (int *,int ,void*) ;
 void* svn_wc_dup_status3 (int const*,int *) ;

__attribute__((used)) static svn_error_t *
hash_stash(void *baton,
           const char *path,
           const svn_wc_status3_t *status,
           apr_pool_t *scratch_pool)
{
  apr_hash_t *stat_hash = baton;
  apr_pool_t *hash_pool = apr_hash_pool_get(stat_hash);
  void *new_status = svn_wc_dup_status3(status, hash_pool);
  const svn_wc__internal_status_t *old_status = (const void*)status;


  svn_wc__internal_status_t *is = new_status;
  is->has_descendants = old_status->has_descendants;
  is->op_root = old_status->op_root;

  assert(! svn_hash_gets(stat_hash, path));
  svn_hash_sets(stat_hash, apr_pstrdup(hash_pool, path), new_status);

  return SVN_NO_ERROR;
}
