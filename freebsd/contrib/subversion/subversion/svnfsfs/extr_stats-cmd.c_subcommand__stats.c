
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int repository_path; } ;
typedef TYPE_1__ svnfsfs__opt_state ;
typedef int svn_fs_t ;
typedef int svn_fs_fs__stats_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_getopt_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int check_cancel ;
 int open_fs (int **,int ,int *) ;
 int print_progress ;
 int print_stats (int *,int *) ;
 int printf (char*) ;
 int svn_fs_fs__get_stats (int **,int *,int ,int *,int ,int *,int *,int *) ;

svn_error_t *
subcommand__stats(apr_getopt_t *os, void *baton, apr_pool_t *pool)
{
  svnfsfs__opt_state *opt_state = baton;
  svn_fs_fs__stats_t *stats;
  svn_fs_t *fs;

  printf("Reading revisions\n");
  SVN_ERR(open_fs(&fs, opt_state->repository_path, pool));
  SVN_ERR(svn_fs_fs__get_stats(&stats, fs, print_progress, ((void*)0),
                               check_cancel, ((void*)0), pool, pool));

  print_stats(stats, pool);

  return SVN_NO_ERROR;
}
