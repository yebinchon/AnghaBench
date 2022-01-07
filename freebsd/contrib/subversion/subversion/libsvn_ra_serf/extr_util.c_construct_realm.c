
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hostname; int scheme; int port; scalar_t__ port_str; } ;
struct TYPE_5__ {TYPE_1__ session_url; } ;
typedef TYPE_2__ svn_ra_serf__session_t ;
typedef int apr_port_t ;
typedef int apr_pool_t ;


 char* apr_psprintf (int *,char*,int ,int ,int ) ;
 int apr_uri_port_of_scheme (int ) ;

__attribute__((used)) static const char *
construct_realm(svn_ra_serf__session_t *session,
                apr_pool_t *pool)
{
  const char *realm;
  apr_port_t port;

  if (session->session_url.port_str)
    {
      port = session->session_url.port;
    }
  else
    {
      port = apr_uri_port_of_scheme(session->session_url.scheme);
    }

  realm = apr_psprintf(pool, "%s://%s:%d",
                       session->session_url.scheme,
                       session->session_url.hostname,
                       port);

  return realm;
}
