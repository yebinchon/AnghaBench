
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;


 int SVN_ERR_REPOS_HOOK_FAILURE ;
 int _ (char*) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;

__attribute__((used)) static svn_error_t *
hook_symlink_error(const char *hook)
{
  return svn_error_createf
    (SVN_ERR_REPOS_HOOK_FAILURE, ((void*)0),
     _("Failed to run '%s' hook; broken symlink"), hook);
}
