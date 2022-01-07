
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_sqlite__stmt_t ;
typedef int svn_revnum_t ;
struct TYPE_5__ {int rep_cache_db; } ;
typedef TYPE_1__ svn_fs_x__data_t ;
struct TYPE_6__ {TYPE_1__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int STMT_DEL_REPS_YOUNGER_THAN_REV ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_x__open_rep_cache (TYPE_2__*,int *) ;
 int svn_sqlite__bindf (int *,char*,int ) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__step_done (int *) ;

svn_error_t *
svn_fs_x__del_rep_reference(svn_fs_t *fs,
                            svn_revnum_t youngest,
                            apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  svn_sqlite__stmt_t *stmt;

  if (! ffd->rep_cache_db)
    SVN_ERR(svn_fs_x__open_rep_cache(fs, scratch_pool));

  SVN_ERR(svn_sqlite__get_statement(&stmt, ffd->rep_cache_db,
                                    STMT_DEL_REPS_YOUNGER_THAN_REV));
  SVN_ERR(svn_sqlite__bindf(stmt, "r", youngest));
  SVN_ERR(svn_sqlite__step_done(stmt));

  return SVN_NO_ERROR;
}
