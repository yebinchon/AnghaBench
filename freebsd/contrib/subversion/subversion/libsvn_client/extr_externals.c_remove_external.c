
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_context_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_WC__CALL_WITH_WRITE_LOCK (int ,int *,char const*,int ,int *) ;
 int remove_external2 (int *,int *,char const*,char const*,int,int ,void*,int *) ;



__attribute__((used)) static svn_error_t *
remove_external(svn_boolean_t *removed,
                svn_wc_context_t *wc_ctx,
                const char *wri_abspath,
                const char *local_abspath,
                svn_node_kind_t external_kind,
                svn_cancel_func_t cancel_func,
                void *cancel_baton,
                apr_pool_t *scratch_pool)
{
  *removed = FALSE;
  switch (external_kind)
    {
      case 129:
        SVN_WC__CALL_WITH_WRITE_LOCK(
            remove_external2(removed,
                             wc_ctx, wri_abspath,
                             local_abspath, external_kind,
                             cancel_func, cancel_baton,
                             scratch_pool),
            wc_ctx, local_abspath, FALSE, scratch_pool);
        break;
      case 128:
      default:
        SVN_ERR(remove_external2(removed,
                                 wc_ctx, wri_abspath,
                                 local_abspath, external_kind,
                                 cancel_func, cancel_baton,
                                 scratch_pool));
        break;
    }

  return SVN_NO_ERROR;
}
