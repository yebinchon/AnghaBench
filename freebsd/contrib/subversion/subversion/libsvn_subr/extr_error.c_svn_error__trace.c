
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int message; int apr_err; } ;
typedef TYPE_1__ svn_error_t ;


 TYPE_1__* SVN_NO_ERROR ;
 int error_tracing_link ;
 TYPE_1__* make_error_internal (int ,TYPE_1__*) ;
 int svn_error__locate (char const*,long) ;

svn_error_t *
svn_error__trace(const char *file, long line, svn_error_t *err)
{



  return err;
}
