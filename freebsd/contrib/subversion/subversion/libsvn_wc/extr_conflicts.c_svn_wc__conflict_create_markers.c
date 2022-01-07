
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_wc_operation_t ;
typedef int svn_wc__db_t ;
struct TYPE_10__ {TYPE_1__* children; } ;
typedef TYPE_2__ svn_skel_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
struct TYPE_9__ {int next; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_WC__CONFLICT_KIND_PROP ;
 int SVN_WC__PROP_REJ_EXT ;
 char* SVN_WC__THIS_DIR_PREJ ;
 int conflict__get_conflict (TYPE_2__**,TYPE_2__*,int ) ;
 int svn_dirent_split (char const**,char const**,char const*,int *) ;
 int svn_io_check_path (char const*,scalar_t__*,int *) ;
 int svn_io_file_del_none ;
 int svn_io_open_uniquely_named (int *,char const**,char const*,char const*,int ,int ,int *,int *) ;
 scalar_t__ svn_node_dir ;
 int svn_skel__prepend_str (char const*,int ,int *) ;
 int svn_wc__conflict_read_info (int *,int *,int *,scalar_t__*,int *,int *,char const*,TYPE_2__*,int *,int *) ;
 int svn_wc__db_to_relpath (char const**,int *,char const*,char const*,int *,int *) ;
 int svn_wc__wq_build_prej_install (TYPE_2__**,int *,char const*,int *,int *) ;

svn_error_t *
svn_wc__conflict_create_markers(svn_skel_t **work_items,
                                svn_wc__db_t *db,
                                const char *local_abspath,
                                svn_skel_t *conflict_skel,
                                apr_pool_t *result_pool,
                                apr_pool_t *scratch_pool)
{
  svn_boolean_t prop_conflicted;
  svn_wc_operation_t operation;
  *work_items = ((void*)0);

  SVN_ERR(svn_wc__conflict_read_info(&operation, ((void*)0),
                                     ((void*)0), &prop_conflicted, ((void*)0),
                                     db, local_abspath,
                                     conflict_skel,
                                     scratch_pool, scratch_pool));

  if (prop_conflicted)
    {
      const char *marker_abspath = ((void*)0);
      svn_node_kind_t kind;
      const char *marker_dir;
      const char *marker_name;
      const char *marker_relpath;






      SVN_ERR(svn_io_check_path(local_abspath, &kind, scratch_pool));

      if (kind == svn_node_dir)
        {
          marker_dir = local_abspath;
          marker_name = SVN_WC__THIS_DIR_PREJ;
        }
      else
        svn_dirent_split(&marker_dir, &marker_name, local_abspath,
                         scratch_pool);

      SVN_ERR(svn_io_open_uniquely_named(((void*)0), &marker_abspath,
                                         marker_dir,
                                         marker_name,
                                         SVN_WC__PROP_REJ_EXT,
                                         svn_io_file_del_none,
                                         scratch_pool, scratch_pool));

      SVN_ERR(svn_wc__db_to_relpath(&marker_relpath, db, local_abspath,
                                    marker_abspath, result_pool, result_pool));


      {
        svn_skel_t *prop_conflict;
        SVN_ERR(conflict__get_conflict(&prop_conflict, conflict_skel,
                                       SVN_WC__CONFLICT_KIND_PROP));

        svn_skel__prepend_str(marker_relpath, prop_conflict->children->next,
                            result_pool);
      }
      SVN_ERR(svn_wc__wq_build_prej_install(work_items,
                                            db, local_abspath,
                                            scratch_pool, scratch_pool));
    }

  return SVN_NO_ERROR;
}
