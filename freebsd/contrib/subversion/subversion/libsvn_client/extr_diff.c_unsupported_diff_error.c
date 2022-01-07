
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;


 int SVN_ERR_INCORRECT_PARAMS ;
 int _ (char*) ;
 int * svn_error_create (int ,int *,int ) ;

__attribute__((used)) static svn_error_t *
unsupported_diff_error(svn_error_t *child_err)
{
  return svn_error_create(SVN_ERR_INCORRECT_PARAMS, child_err,
                          _("Sorry, svn_client_diff6 was called in a way "
                            "that is not yet supported"));
}
