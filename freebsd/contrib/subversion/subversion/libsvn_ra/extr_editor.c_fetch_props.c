
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct fp_baton {int cb_baton; int (* provide_props_cb ) (int **,int *,int ,char const*,int *,int *) ;} ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int stub1 (int **,int *,int ,char const*,int *,int *) ;
 int * svn_error_trace (int ) ;

__attribute__((used)) static svn_error_t *
fetch_props(apr_hash_t **props,
            void *baton,
            const char *repos_relpath,
            svn_revnum_t base_revision,
            apr_pool_t *result_pool,
            apr_pool_t *scratch_pool)
{
  struct fp_baton *fpb = baton;
  svn_revnum_t unused_revision;



  return svn_error_trace(fpb->provide_props_cb(props, &unused_revision,
                                               fpb->cb_baton,
                                               repos_relpath,
                                               result_pool, scratch_pool));
}
