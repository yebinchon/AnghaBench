
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_ra_serf__xml_estate_t ;
typedef int svn_error_t ;
struct TYPE_4__ {TYPE_1__* cur_file; } ;
typedef TYPE_2__ report_context_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
struct TYPE_3__ {scalar_t__ txdelta_stream; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TXDELTA ;
 int svn_stream_write (scalar_t__,char const*,int *) ;

__attribute__((used)) static svn_error_t *
update_cdata(svn_ra_serf__xml_estate_t *xes,
             void *baton,
             int current_state,
             const char *data,
             apr_size_t len,
             apr_pool_t *scratch_pool)
{
  report_context_t *ctx = baton;

  if (current_state == TXDELTA && ctx->cur_file
      && ctx->cur_file->txdelta_stream)
    {
      SVN_ERR(svn_stream_write(ctx->cur_file->txdelta_stream, data, &len));
    }

  return SVN_NO_ERROR;
}
