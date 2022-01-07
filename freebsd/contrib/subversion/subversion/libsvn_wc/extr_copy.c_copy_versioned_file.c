
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ kind; } ;
typedef TYPE_1__ svn_wc_notify_t ;
typedef int (* svn_wc_notify_func2_t ) (void*,TYPE_1__*,int *) ;
typedef int svn_wc__db_t ;
typedef int svn_skel_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_io_dirent2_t ;
typedef int svn_filesize_t ;
struct TYPE_17__ {scalar_t__ apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef int svn_cancel_func_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_time_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (TYPE_3__*) ;
 scalar_t__ SVN_ERR_WC_MISSING ;
 TYPE_3__* SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 TYPE_3__* copy_to_tmpdir (int **,int *,int *,char const*,char const*,char const*,scalar_t__,scalar_t__,int const*,int ,int ,int ,void*,int *,int *) ;
 int stub1 (void*,TYPE_1__*,int *) ;
 int svn_error_clear (TYPE_3__*) ;
 TYPE_3__* svn_io_check_path (char const*,scalar_t__*,int *) ;
 scalar_t__ svn_node_file ;
 TYPE_3__* svn_wc__conflict_read_text_conflict (char const**,int *,int *,int *,char const*,int *,int *,int *) ;
 TYPE_3__* svn_wc__db_op_copy (int *,char const*,char const*,char const*,scalar_t__,int *,int *) ;
 TYPE_3__* svn_wc__db_read_conflict (int **,int *,int *,int *,char const*,int *,int *) ;
 TYPE_1__* svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_notify_add ;

__attribute__((used)) static svn_error_t *
copy_versioned_file(svn_wc__db_t *db,
                    const char *src_abspath,
                    const char *dst_abspath,
                    const char *dst_op_root_abspath,
                    const char *tmpdir_abspath,
                    svn_boolean_t metadata_only,
                    svn_boolean_t conflicted,
                    svn_boolean_t is_move,
                    const svn_io_dirent2_t *dirent,
                    svn_filesize_t recorded_size,
                    apr_time_t recorded_time,
                    svn_cancel_func_t cancel_func,
                    void *cancel_baton,
                    svn_wc_notify_func2_t notify_func,
                    void *notify_baton,
                    apr_pool_t *scratch_pool)
{
  svn_skel_t *work_items = ((void*)0);






  if (!metadata_only)
    {
      const char *my_src_abspath = ((void*)0);
      svn_boolean_t handle_as_unversioned = FALSE;


      my_src_abspath = src_abspath;

      if (conflicted)
        {
          svn_skel_t *conflict;
          const char *conflict_working;
          svn_error_t *err;


          SVN_ERR(svn_wc__db_read_conflict(&conflict, ((void*)0), ((void*)0),
                                           db, src_abspath,
                                           scratch_pool, scratch_pool));

          err = svn_wc__conflict_read_text_conflict(&conflict_working, ((void*)0), ((void*)0),
                                                    db, src_abspath, conflict,
                                                    scratch_pool,
                                                    scratch_pool);

          if (err && err->apr_err == SVN_ERR_WC_MISSING)
            {

              svn_error_clear(err);
              conflict_working = ((void*)0);
            }
          else
            SVN_ERR(err);

          if (conflict_working)
            {
              svn_node_kind_t working_kind;


              SVN_ERR(svn_io_check_path(conflict_working, &working_kind,
                                        scratch_pool));

              if (working_kind == svn_node_file)
                {

                  handle_as_unversioned = TRUE;
                  my_src_abspath = conflict_working;
                }
            }
        }

      SVN_ERR(copy_to_tmpdir(&work_items, ((void*)0), db, my_src_abspath,
                             dst_abspath, tmpdir_abspath,
                             TRUE ,
                             handle_as_unversioned ,
                             dirent, recorded_size, recorded_time,
                             cancel_func, cancel_baton,
                             scratch_pool, scratch_pool));
    }



  SVN_ERR(svn_wc__db_op_copy(db, src_abspath, dst_abspath,
                             dst_op_root_abspath, is_move, work_items,
                             scratch_pool));

  if (notify_func)
    {
      svn_wc_notify_t *notify
        = svn_wc_create_notify(dst_abspath, svn_wc_notify_add,
                               scratch_pool);
      notify->kind = svn_node_file;

      (*notify_func)(notify_baton, notify, scratch_pool);
    }
  return SVN_NO_ERROR;
}
