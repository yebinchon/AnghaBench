
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_ra_svn_conn_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_7__ {TYPE_1__* repository; } ;
typedef TYPE_2__ server_baton_t ;
typedef enum access_type { ____Placeholder_access_type } access_type ;
typedef int apr_pool_t ;
struct TYPE_6__ {scalar_t__ use_sasl; } ;


 int * cyrus_auth_request (int *,int *,TYPE_2__*,int,int ) ;
 int * internal_auth_request (int *,int *,TYPE_2__*,int,int ) ;

__attribute__((used)) static svn_error_t *auth_request(svn_ra_svn_conn_t *conn, apr_pool_t *pool,
                                 server_baton_t *b, enum access_type required,
                                 svn_boolean_t needs_username)
{





  return internal_auth_request(conn, pool, b, required, needs_username);
}
