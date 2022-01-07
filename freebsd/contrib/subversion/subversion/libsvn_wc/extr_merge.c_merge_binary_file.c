
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_3__ {int local_abspath; int db; } ;
typedef TYPE_1__ merge_target_t ;
typedef enum svn_wc_merge_outcome_t { ____Placeholder_svn_wc_merge_outcome_t } svn_wc_merge_outcome_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 scalar_t__ strcmp (int ,char const*) ;
 int svn_dirent_split (char const**,char const**,int ,int *) ;
 int svn_io_copy_file (char const*,char const*,int ,int *) ;
 int svn_io_file_del_none ;
 int svn_io_open_uniquely_named (int *,char const**,char const*,char const*,char const*,int ,int *,int *) ;
 int svn_wc__conflict_skel_add_text_conflict (int *,int ,int ,char const*,char const*,char const*,int *,int *) ;
 int * svn_wc__conflict_skel_create (int *) ;
 int svn_wc__wq_build_file_move (int **,int ,int ,char const*,char const*,int *,int *) ;
 int svn_wc_merge_conflict ;

__attribute__((used)) static svn_error_t *
merge_binary_file(svn_skel_t **work_items,
                  svn_skel_t **conflict_skel,
                  enum svn_wc_merge_outcome_t *merge_outcome,
                  const merge_target_t *mt,
                  const char *left_abspath,
                  const char *right_abspath,
                  const char *left_label,
                  const char *right_label,
                  const char *target_label,
                  svn_boolean_t dry_run,
                  const char *detranslated_target_abspath,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  apr_pool_t *pool = scratch_pool;


  const char *left_copy, *right_copy;
  const char *merge_dirpath, *merge_filename;
  const char *conflict_wrk;

  *work_items = ((void*)0);

  svn_dirent_split(&merge_dirpath, &merge_filename, mt->local_abspath, pool);

  if (dry_run)
    {
      *merge_outcome = svn_wc_merge_conflict;
      return SVN_NO_ERROR;
    }


  SVN_ERR(svn_io_open_uniquely_named(((void*)0),
                                     &left_copy,
                                     merge_dirpath,
                                     merge_filename,
                                     left_label,
                                     svn_io_file_del_none,
                                     pool, pool));

  SVN_ERR(svn_io_open_uniquely_named(((void*)0),
                                     &right_copy,
                                     merge_dirpath,
                                     merge_filename,
                                     right_label,
                                     svn_io_file_del_none,
                                     pool, pool));


  SVN_ERR(svn_io_copy_file(left_abspath, left_copy, TRUE, pool));
  SVN_ERR(svn_io_copy_file(right_abspath, right_copy, TRUE, pool));


  if (strcmp(mt->local_abspath, detranslated_target_abspath) != 0)
    {

      SVN_ERR(svn_io_open_uniquely_named(((void*)0),
                                         &conflict_wrk,
                                         merge_dirpath,
                                         merge_filename,
                                         target_label,
                                         svn_io_file_del_none,
                                         pool, pool));
      SVN_ERR(svn_wc__wq_build_file_move(work_items, mt->db,
                                         mt->local_abspath,
                                         detranslated_target_abspath,
                                         conflict_wrk,
                                         pool, result_pool));
    }
  else
    {
      conflict_wrk = ((void*)0);
    }



  if (!*conflict_skel)
    *conflict_skel = svn_wc__conflict_skel_create(result_pool);

  SVN_ERR(svn_wc__conflict_skel_add_text_conflict(*conflict_skel,
                                                  mt->db, mt->local_abspath,
                                                  conflict_wrk,
                                                  left_copy,
                                                  right_copy,
                                                  result_pool, scratch_pool));

  *merge_outcome = svn_wc_merge_conflict;

  return SVN_NO_ERROR;
}
