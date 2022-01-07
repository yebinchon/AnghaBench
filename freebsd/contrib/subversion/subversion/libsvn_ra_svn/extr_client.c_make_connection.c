
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_socket_t ;
struct TYPE_4__ {struct TYPE_4__* next; int family; } ;
typedef TYPE_1__ apr_sockaddr_t ;
typedef int apr_pool_t ;


 int APR_INET ;
 int APR_INET6 ;
 int APR_PROTO_TCP ;
 int APR_SO_KEEPALIVE ;
 scalar_t__ APR_SUCCESS ;
 int APR_UNSPEC ;
 int SOCK_STREAM ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ apr_sockaddr_info_get (TYPE_1__**,char const*,int,unsigned short,int ,int *) ;
 int apr_socket_close (int *) ;
 scalar_t__ apr_socket_connect (int *,TYPE_1__*) ;
 scalar_t__ apr_socket_create (int **,int ,int ,int ,...) ;
 scalar_t__ apr_socket_opt_set (int *,int ,int) ;
 int * svn_error_createf (scalar_t__,int *,int ,char const*) ;
 int * svn_error_wrap_apr (scalar_t__,int ,char const*) ;

__attribute__((used)) static svn_error_t *make_connection(const char *hostname, unsigned short port,
                                    apr_socket_t **sock, apr_pool_t *pool)
{
  apr_sockaddr_t *sa;
  apr_status_t status;
  int family = APR_INET;
  status = apr_sockaddr_info_get(&sa, hostname, family, port, 0, pool);
  if (status)
    return svn_error_createf(status, ((void*)0), _("Unknown hostname '%s'"),
                             hostname);


  do
    {





      status = apr_socket_create(sock, sa->family, SOCK_STREAM, APR_PROTO_TCP,
                                 pool);

      if (status == APR_SUCCESS)
        {
          status = apr_socket_connect(*sock, sa);
          if (status != APR_SUCCESS)
            apr_socket_close(*sock);
        }
      sa = sa->next;
    }
  while (status != APR_SUCCESS && sa);

  if (status)
    return svn_error_wrap_apr(status, _("Can't connect to host '%s'"),
                              hostname);
  status = apr_socket_opt_set(*sock, APR_SO_KEEPALIVE, 1);
  if (status)
    {

    }

  return SVN_NO_ERROR;
}
