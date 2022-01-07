
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_wc_status3_t ;
struct TYPE_5__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
struct TYPE_6__ {int s; } ;
typedef TYPE_2__ svn_wc__internal_status_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int internal_status (TYPE_2__**,int ,char const*,int ,int *,int *) ;

svn_error_t *
svn_wc_status3(svn_wc_status3_t **status,
               svn_wc_context_t *wc_ctx,
               const char *local_abspath,
               apr_pool_t *result_pool,
               apr_pool_t *scratch_pool)
{
  svn_wc__internal_status_t *stat;
  SVN_ERR(internal_status(&stat, wc_ctx->db, local_abspath,
                          TRUE ,
                          result_pool, scratch_pool));
  *status = &stat->s;
  return SVN_NO_ERROR;
}
