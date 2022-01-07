
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int server_baton_t ;
typedef scalar_t__ apr_status_t ;


 scalar_t__ SVN_ERR_AUTHN_FAILED ;
 scalar_t__ SVN_ERR_AUTHZ_INVALID_CONFIG ;
 int log_error (TYPE_1__*,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_create (scalar_t__,int *,int *) ;

__attribute__((used)) static svn_error_t *
handle_config_error(svn_error_t *error,
                    server_baton_t *server)
{
  if ( error
      && ( error->apr_err == SVN_ERR_AUTHZ_INVALID_CONFIG
          || error->apr_err == SVN_ERR_AUTHN_FAILED))
    {
      apr_status_t apr_err = error->apr_err;
      log_error(error, server);




      svn_error_clear(error);
      return svn_error_create(apr_err, ((void*)0), ((void*)0));
    }

  return error;
}
