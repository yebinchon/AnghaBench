
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


 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ apr_socket_send (int ,char const*,int *) ;
 int * svn_error_wrap_apr (scalar_t__,int ) ;

__attribute__((used)) static svn_error_t *
sock_write_cb(void *baton, const char *buffer, apr_size_t *len)
{
  sock_baton_t *b = baton;
  apr_status_t status = apr_socket_send(b->sock, buffer, len);
  if (status)
    return svn_error_wrap_apr(status, _("Can't write to connection"));
  return SVN_NO_ERROR;
}
