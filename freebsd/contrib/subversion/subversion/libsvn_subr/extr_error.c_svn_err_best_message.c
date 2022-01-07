
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* message; int apr_err; struct TYPE_4__* child; } ;
typedef TYPE_1__ svn_error_t ;
typedef int apr_size_t ;


 scalar_t__ svn_error__is_tracing_link (TYPE_1__ const*) ;
 char const* svn_strerror (int ,char*,int ) ;

const char *
svn_err_best_message(const svn_error_t *err, char *buf, apr_size_t bufsize)
{

  while (svn_error__is_tracing_link(err))
    err = err->child;
  if (err->message)
    return err->message;
  else
    return svn_strerror(err->apr_err, buf, bufsize);
}
