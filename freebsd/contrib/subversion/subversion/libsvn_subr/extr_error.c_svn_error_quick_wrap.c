
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int apr_err; } ;
typedef TYPE_1__ svn_error_t ;


 TYPE_1__* SVN_NO_ERROR ;
 TYPE_1__* svn_error_create (int ,TYPE_1__*,char const*) ;

svn_error_t *
svn_error_quick_wrap(svn_error_t *child, const char *new_msg)
{
  if (child == SVN_NO_ERROR)
    return SVN_NO_ERROR;

  return svn_error_create(child->apr_err,
                          child,
                          new_msg);
}
