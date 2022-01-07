
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tunnel_data_t {scalar_t__ request; scalar_t__ response; int tunnel_baton; int tunnel_context; int (* close_tunnel ) (int ,int ) ;} ;
typedef int apr_status_t ;


 int APR_SUCCESS ;
 int stub1 (int ,int ) ;
 int svn_error_clear (int ) ;
 int svn_stream_close (scalar_t__) ;

__attribute__((used)) static apr_status_t close_tunnel_cleanup(void *baton)
{
  const struct tunnel_data_t *const td = baton;

  if (td->close_tunnel)
    td->close_tunnel(td->tunnel_context, td->tunnel_baton);

  svn_error_clear(svn_stream_close(td->request));


  if (td->request != td->response)
    svn_error_clear(svn_stream_close(td->response));

  return APR_SUCCESS;
}
