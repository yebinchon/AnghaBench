
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_8__ {int wc_ctx; } ;
typedef TYPE_1__ svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_9__ {int nelts; } ;
typedef TYPE_2__ apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_WC__CALL_WITH_WRITE_LOCK (int ,int ,char const*,int ,int *) ;
 int do_wc_to_wc_copies_with_write_lock (int *,TYPE_2__ const*,char const*,int ,int ,int const*,TYPE_1__*,int *) ;
 int get_copy_pair_ancestors (TYPE_2__ const*,int *,char const**,int *,int *) ;
 char* svn_dirent_dirname (char const*,int *) ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;

__attribute__((used)) static svn_error_t *
do_wc_to_wc_copies(svn_boolean_t *timestamp_sleep,
                   const apr_array_header_t *copy_pairs,
                   svn_boolean_t metadata_only,
                   svn_boolean_t pin_externals,
                   const apr_hash_t *externals_to_pin,
                   svn_client_ctx_t *ctx,
                   apr_pool_t *pool)
{
  const char *dst_parent, *dst_parent_abspath;

  SVN_ERR(get_copy_pair_ancestors(copy_pairs, ((void*)0), &dst_parent, ((void*)0), pool));
  if (copy_pairs->nelts == 1)
    dst_parent = svn_dirent_dirname(dst_parent, pool);

  SVN_ERR(svn_dirent_get_absolute(&dst_parent_abspath, dst_parent, pool));

  SVN_WC__CALL_WITH_WRITE_LOCK(
    do_wc_to_wc_copies_with_write_lock(timestamp_sleep, copy_pairs, dst_parent,
                                       metadata_only, pin_externals,
                                       externals_to_pin, ctx, pool),
    ctx->wc_ctx, dst_parent_abspath, FALSE, pool);

  return SVN_NO_ERROR;
}
