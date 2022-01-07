
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_context_t ;
typedef int svn_wc_committed_queue_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int TRUE ;
 int * svn_error_trace (int ) ;
 int svn_wc_queue_committed4 (int *,int *,char const*,int ,int ,int const*,int ,int ,int const*,int *) ;

svn_error_t *
svn_wc_queue_committed3(svn_wc_committed_queue_t *queue,
                        svn_wc_context_t *wc_ctx,
                        const char *local_abspath,
                        svn_boolean_t recurse,
                        const apr_array_header_t *wcprop_changes,
                        svn_boolean_t remove_lock,
                        svn_boolean_t remove_changelist,
                        const svn_checksum_t *sha1_checksum,
                        apr_pool_t *scratch_pool)
{
  return svn_error_trace(
            svn_wc_queue_committed4(queue, wc_ctx, local_abspath,
                                    recurse, TRUE ,
                                    wcprop_changes, remove_lock,
                                    remove_changelist, sha1_checksum,
                                    scratch_pool));
}
