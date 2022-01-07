
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wc_id; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int STMT_SELECT_MOVED_FROM_RELPATH ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ strcmp (char const*,char const*) ;
 scalar_t__ strlen (char const*) ;
 char* svn_relpath_join (char const*,char const*,int *) ;
 char* svn_relpath_skip_ancestor (char const*,char const*) ;
 int svn_sqlite__bindf (int *,char*,int ,char const*) ;
 int svn_sqlite__column_int (int *,int) ;
 char* svn_sqlite__column_text (int *,int ,int *) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (int *,int *) ;

__attribute__((used)) static svn_error_t *
get_moved_from_info(const char **moved_from_relpath,
                    const char **moved_from_op_root_relpath,
                    const char *moved_to_op_root_relpath,
                    int *op_depth,
                    svn_wc__db_wcroot_t *wcroot,
                    const char *local_relpath,
                    apr_pool_t *result_pool,
                    apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;


  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_MOVED_FROM_RELPATH));
  SVN_ERR(svn_sqlite__bindf(stmt, "is",
                            wcroot->wc_id, moved_to_op_root_relpath));
  SVN_ERR(svn_sqlite__step(&have_row, stmt));

  if (!have_row)
    {



      if (moved_from_relpath)
        *moved_from_relpath = ((void*)0);
      if (moved_from_op_root_relpath)
        *moved_from_op_root_relpath = ((void*)0);

      SVN_ERR(svn_sqlite__reset(stmt));
      return SVN_NO_ERROR;
    }

  if (op_depth)
    *op_depth = svn_sqlite__column_int(stmt, 1);

  if (moved_from_relpath || moved_from_op_root_relpath)
    {
      const char *db_delete_op_root_relpath;



      db_delete_op_root_relpath = svn_sqlite__column_text(stmt, 0,
                                                          result_pool);
      if (moved_from_op_root_relpath)
        *moved_from_op_root_relpath = db_delete_op_root_relpath;

      if (moved_from_relpath)
        {
          if (strcmp(moved_to_op_root_relpath, local_relpath) == 0)
            {



              *moved_from_relpath = db_delete_op_root_relpath;
            }
          else
            {
              const char *child_relpath;







              child_relpath = svn_relpath_skip_ancestor(
                                moved_to_op_root_relpath, local_relpath);

              SVN_ERR_ASSERT(child_relpath && strlen(child_relpath) > 0);




              *moved_from_relpath = svn_relpath_join(db_delete_op_root_relpath,
                                                     child_relpath,
                                                     result_pool);
            }
        }
    }

  SVN_ERR(svn_sqlite__reset(stmt));

  return SVN_NO_ERROR;
}
