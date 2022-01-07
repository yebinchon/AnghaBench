
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wc_id; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;


 int STMT_COMMIT_DESCENDANTS_TO_BASE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int svn_sqlite__bindf (int *,char*,int ,char const*,int,int ,char const*,int ) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__update (int *,int *) ;

__attribute__((used)) static svn_error_t *
descendant_commit(svn_wc__db_wcroot_t *wcroot,
                  const char *local_relpath,
                  int op_depth,
                  apr_int64_t repos_id,
                  const char *repos_relpath,
                  svn_revnum_t revision,
                  apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;

  SVN_ERR_ASSERT(*local_relpath != '\0'
                 && *repos_relpath != '\0');

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_COMMIT_DESCENDANTS_TO_BASE));

  SVN_ERR(svn_sqlite__bindf(stmt, "isdisr", wcroot->wc_id,
                                            local_relpath,
                                            op_depth,
                                            repos_id,
                                            repos_relpath,
                                            revision));

  SVN_ERR(svn_sqlite__update(((void*)0), stmt));

  return SVN_NO_ERROR;
}
