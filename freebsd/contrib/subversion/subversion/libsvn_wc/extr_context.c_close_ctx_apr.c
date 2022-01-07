
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int db; scalar_t__ close_db_on_destroy; } ;
typedef TYPE_1__ svn_wc_context_t ;
struct TYPE_6__ {int apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef int apr_status_t ;


 int APR_SUCCESS ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_wc__db_close (int ) ;

__attribute__((used)) static apr_status_t
close_ctx_apr(void *data)
{
  svn_wc_context_t *ctx = data;

  if (ctx->close_db_on_destroy)
    {
      svn_error_t *err = svn_wc__db_close(ctx->db);
      if (err)
        {
          int result = err->apr_err;
          svn_error_clear(err);
          return result;
        }
    }

  return APR_SUCCESS;
}
