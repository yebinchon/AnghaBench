
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pool; int message; } ;
typedef TYPE_1__ svn_error_t ;
typedef int apr_status_t ;


 int apr_pstrdup (int ,char const*) ;
 TYPE_1__* make_error_internal (int ,TYPE_1__*) ;

svn_error_t *
svn_error_create(apr_status_t apr_err,
                 svn_error_t *child,
                 const char *message)
{
  svn_error_t *err;

  err = make_error_internal(apr_err, child);

  if (message)
    err->message = apr_pstrdup(err->pool, message);

  return err;
}
