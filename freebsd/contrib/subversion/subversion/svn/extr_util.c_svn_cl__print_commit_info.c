
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int revision; scalar_t__ post_commit_err; } ;
typedef TYPE_1__ svn_commit_info_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_IS_VALID_REVNUM (int) ;
 int * SVN_NO_ERROR ;
 char* _ (char*) ;
 scalar_t__ getenv (char*) ;
 int svn_cmdline_printf (int *,char*,int,...) ;

svn_error_t *
svn_cl__print_commit_info(const svn_commit_info_t *commit_info,
                          void *baton,
                          apr_pool_t *pool)
{







  if (SVN_IS_VALID_REVNUM(commit_info->revision))
    SVN_ERR(svn_cmdline_printf(pool, _("Committed revision %ld%s.\n"),
                               commit_info->revision,
                               commit_info->revision == 42 &&
                               getenv("SVN_I_LOVE_PANGALACTIC_GARGLE_BLASTERS")
                                 ? _(" (the answer to life, the universe, "
                                      "and everything)")
                                 : ""));





  if (commit_info->post_commit_err)
    SVN_ERR(svn_cmdline_printf(pool, _("\nWarning: %s\n"),
                               commit_info->post_commit_err));

  return SVN_NO_ERROR;
}
