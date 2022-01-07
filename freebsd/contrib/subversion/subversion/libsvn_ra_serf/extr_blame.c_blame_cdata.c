
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_ra_serf__xml_estate_t ;
typedef int svn_error_t ;
struct TYPE_2__ {int stream; } ;
typedef TYPE_1__ blame_context_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TXDELTA ;
 int svn_stream_write (int ,char const*,int *) ;

__attribute__((used)) static svn_error_t *
blame_cdata(svn_ra_serf__xml_estate_t *xes,
            void *baton,
            int current_state,
            const char *data,
            apr_size_t len,
            apr_pool_t *scratch_pool)
{
  blame_context_t *blame_ctx = baton;

  if (current_state == TXDELTA)
    {
      SVN_ERR(svn_stream_write(blame_ctx->stream, data, &len));

    }

  return SVN_NO_ERROR;
}
