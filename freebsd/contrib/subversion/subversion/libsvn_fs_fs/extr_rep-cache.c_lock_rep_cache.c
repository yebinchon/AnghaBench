
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_6__ {int rep_cache_db; } ;
typedef TYPE_2__ fs_fs_data_t ;
typedef int apr_pool_t ;


 int STMT_LOCK_REP ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_fs__open_rep_cache (TYPE_1__*,int *) ;
 int svn_sqlite__exec_statements (int ,int ) ;

__attribute__((used)) static svn_error_t *
lock_rep_cache(svn_fs_t *fs,
               apr_pool_t *pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;

  if (! ffd->rep_cache_db)
    SVN_ERR(svn_fs_fs__open_rep_cache(fs, pool));

  SVN_ERR(svn_sqlite__exec_statements(ffd->rep_cache_db, STMT_LOCK_REP));

  return SVN_NO_ERROR;
}
