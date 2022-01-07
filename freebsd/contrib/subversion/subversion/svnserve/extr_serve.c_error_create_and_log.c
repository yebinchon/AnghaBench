
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int server_baton_t ;
typedef int apr_status_t ;


 int log_error (int *,int *) ;
 int * svn_error_create (int ,int *,char const*) ;

__attribute__((used)) static svn_error_t *
error_create_and_log(apr_status_t apr_err, svn_error_t *child,
                     const char *message, server_baton_t *server)
{
  svn_error_t *err = svn_error_create(apr_err, child, message);
  log_error(err, server);
  return err;
}
