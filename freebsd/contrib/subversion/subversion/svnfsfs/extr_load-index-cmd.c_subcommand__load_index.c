
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int repository_path; } ;
typedef TYPE_1__ svnfsfs__opt_state ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_getopt_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int load_index (int ,int *,int *) ;
 int svn_stream_for_stdin2 (int **,int ,int *) ;

svn_error_t *
subcommand__load_index(apr_getopt_t *os, void *baton, apr_pool_t *pool)
{
  svnfsfs__opt_state *opt_state = baton;
  svn_stream_t *input;

  SVN_ERR(svn_stream_for_stdin2(&input, TRUE, pool));
  SVN_ERR(load_index(opt_state->repository_path, input, pool));

  return SVN_NO_ERROR;
}
