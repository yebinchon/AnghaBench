
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;


 scalar_t__ SVN_ERR_CLIENT_MODIFIED ;
 scalar_t__ SVN_ERR_UNVERSIONED_RESOURCE ;
 int _ (char*) ;
 TYPE_1__* svn_error_quick_wrap (TYPE_1__*,int ) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;

svn_error_t *
svn_cl__may_need_force(svn_error_t *err)
{
  if (err
      && (err->apr_err == SVN_ERR_UNVERSIONED_RESOURCE ||
          err->apr_err == SVN_ERR_CLIENT_MODIFIED))
    {


      err = svn_error_quick_wrap
        (err, _("Use --force to override this restriction (local modifications "
         "may be lost)"));
    }

  return svn_error_trace(err);
}
