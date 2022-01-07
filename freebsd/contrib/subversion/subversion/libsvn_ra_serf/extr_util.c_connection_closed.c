
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * ssl_context; TYPE_1__* session; } ;
typedef TYPE_2__ svn_ra_serf__connection_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
struct TYPE_4__ {scalar_t__ using_ssl; } ;


 int * SVN_NO_ERROR ;
 int * svn_ra_serf__wrap_err (scalar_t__,int *) ;

__attribute__((used)) static svn_error_t *
connection_closed(svn_ra_serf__connection_t *conn,
                  apr_status_t why,
                  apr_pool_t *pool)
{
  if (why)
    {
      return svn_ra_serf__wrap_err(why, ((void*)0));
    }

  if (conn->session->using_ssl)
    conn->ssl_context = ((void*)0);

  return SVN_NO_ERROR;
}
