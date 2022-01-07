
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_commit_info_t ;
struct commit_info_baton {int target_local; int pname; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int svn_cl__print_commit_info (int const*,int *,int *) ;
 int svn_cmdline_printf (int *,int ,int ,int ) ;

__attribute__((used)) static svn_error_t *
commit_info_handler(const svn_commit_info_t *commit_info,
                    void *baton,
                    apr_pool_t *pool)
{
  struct commit_info_baton *cib = baton;

  SVN_ERR(svn_cmdline_printf(pool,
                             _("Set new value for property '%s' on '%s'\n"),
                             cib->pname, cib->target_local));
  SVN_ERR(svn_cl__print_commit_info(commit_info, ((void*)0), pool));

  return SVN_NO_ERROR;
}
