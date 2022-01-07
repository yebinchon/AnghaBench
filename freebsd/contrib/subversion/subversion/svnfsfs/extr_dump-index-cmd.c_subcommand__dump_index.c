
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int number; } ;
struct TYPE_5__ {TYPE_1__ value; } ;
struct TYPE_6__ {TYPE_2__ start_revision; int repository_path; } ;
typedef TYPE_3__ svnfsfs__opt_state ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_getopt_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int dump_index (int ,int ,int *) ;

svn_error_t *
subcommand__dump_index(apr_getopt_t *os, void *baton, apr_pool_t *pool)
{
  svnfsfs__opt_state *opt_state = baton;

  SVN_ERR(dump_index(opt_state->repository_path,
                     opt_state->start_revision.value.number, pool));

  return SVN_NO_ERROR;
}
