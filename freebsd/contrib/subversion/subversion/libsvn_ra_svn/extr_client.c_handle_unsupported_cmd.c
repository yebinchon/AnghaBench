
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;


 int SVN_ERR_RA_NOT_IMPLEMENTED ;
 scalar_t__ SVN_ERR_RA_SVN_UNKNOWN_CMD ;
 int _ (char const*) ;
 TYPE_1__* svn_error_create (int ,TYPE_1__*,int ) ;

__attribute__((used)) static svn_error_t *handle_unsupported_cmd(svn_error_t *err,
                                           const char *msg)
{
  if (err && err->apr_err == SVN_ERR_RA_SVN_UNKNOWN_CMD)
    return svn_error_create(SVN_ERR_RA_NOT_IMPLEMENTED, err,
                            _(msg));
  return err;
}
