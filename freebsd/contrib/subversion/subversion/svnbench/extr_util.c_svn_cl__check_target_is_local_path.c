
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;


 int SVN_ERR_CL_ARG_PARSING_ERROR ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 scalar_t__ svn_path_is_url (char const*) ;

svn_error_t *
svn_cl__check_target_is_local_path(const char *target)
{
  if (svn_path_is_url(target))
    return svn_error_createf(SVN_ERR_CL_ARG_PARSING_ERROR, ((void*)0),
                             _("'%s' is not a local path"), target);
  return SVN_NO_ERROR;
}
