
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_2__ {int sock; } ;
typedef TYPE_1__ sock_baton_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_size_t ;
typedef int apr_interval_time_t ;


 int APR_STATUS_IS_EOF (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ apr_socket_recv (int ,char*,int *) ;
 scalar_t__ apr_socket_timeout_get (int ,int*) ;
 int apr_socket_timeout_set (int ,int) ;
 int * svn_error_wrap_apr (scalar_t__,int ) ;

__attribute__((used)) static svn_error_t *
sock_read_cb(void *baton, char *buffer, apr_size_t *len)
{
  sock_baton_t *b = baton;
  apr_status_t status;
  apr_interval_time_t interval;

  status = apr_socket_timeout_get(b->sock, &interval);
  if (status)
    return svn_error_wrap_apr(status, _("Can't get socket timeout"));







  apr_socket_timeout_set(b->sock, -1);
  status = apr_socket_recv(b->sock, buffer, len);
  apr_socket_timeout_set(b->sock, interval);

  if (status && !APR_STATUS_IS_EOF(status))
    return svn_error_wrap_apr(status, _("Can't read from connection"));
  return SVN_NO_ERROR;
}
