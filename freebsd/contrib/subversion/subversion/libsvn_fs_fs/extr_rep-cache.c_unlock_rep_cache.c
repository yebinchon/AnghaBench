
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_5__ {int rep_cache_db; } ;
typedef TYPE_2__ fs_fs_data_t ;
typedef int apr_pool_t ;


 int STMT_UNLOCK_REP ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int svn_sqlite__exec_statements (int ,int ) ;

__attribute__((used)) static svn_error_t *
unlock_rep_cache(svn_fs_t *fs,
                 apr_pool_t *pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;

  SVN_ERR_ASSERT(ffd->rep_cache_db);

  SVN_ERR(svn_sqlite__exec_statements(ffd->rep_cache_db, STMT_UNLOCK_REP));

  return SVN_NO_ERROR;
}
