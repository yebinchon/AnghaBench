
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
struct TYPE_4__ {int wcroot_abspath; TYPE_1__* ctx; } ;
typedef TYPE_2__ callback_baton_t ;
typedef int apr_pool_t ;
struct TYPE_3__ {int wc_ctx; } ;


 int * SVN_NO_ERROR ;
 int * svn_error_trace (int ) ;
 int svn_wc__get_pristine_contents_by_checksum (int **,int ,int ,int const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
get_wc_contents(void *baton,
                svn_stream_t **contents,
                const svn_checksum_t *checksum,
                apr_pool_t *pool)
{
  callback_baton_t *cb = baton;

  if (! cb->wcroot_abspath)
    {
      *contents = ((void*)0);
      return SVN_NO_ERROR;
    }

  return svn_error_trace(
             svn_wc__get_pristine_contents_by_checksum(contents,
                                                       cb->ctx->wc_ctx,
                                                       cb->wcroot_abspath,
                                                       checksum,
                                                       pool, pool));
}
