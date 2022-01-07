
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {int revision; } ;
typedef TYPE_1__ svn_commit_info_t ;
struct TYPE_5__ {int committed_rev; int quiet; } ;
typedef TYPE_2__ subcommand_baton_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int svn_cmdline_printf (int *,int ,int ) ;

__attribute__((used)) static svn_error_t *
commit_callback(const svn_commit_info_t *commit_info,
                void *baton,
                apr_pool_t *pool)
{
  subcommand_baton_t *sb = baton;

  if (! sb->quiet)
    {
      SVN_ERR(svn_cmdline_printf(pool, _("Committed revision %ld.\n"),
                                 commit_info->revision));
    }

  sb->committed_rev = commit_info->revision;

  return SVN_NO_ERROR;
}
