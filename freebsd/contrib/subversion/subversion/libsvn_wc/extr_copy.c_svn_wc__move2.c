
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int * svn_wc_notify_func2_t ;
struct TYPE_4__ {int * db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_wc__db_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int copy_or_move (scalar_t__*,TYPE_1__*,char const*,char const*,scalar_t__,scalar_t__,scalar_t__,int ,void*,int *,void*,int *) ;
 int remove_all_conflict_markers (int *,char const*,char const*,int ,void*,int *) ;
 int remove_node_conflict_markers (int *,char const*,char const*,int *) ;
 int svn_dirent_dirname (char const*,int *) ;
 int svn_error_compose_create (int *,int ) ;
 int * svn_error_trace (int ) ;
 int svn_io_file_rename2 (char const*,char const*,int ,int *) ;
 scalar_t__ svn_node_dir ;
 int svn_wc__db_op_delete (int *,char const*,char const*,scalar_t__,int *,int *,int ,void*,int *,void*,int *) ;
 int svn_wc__db_read_info (int *,scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,scalar_t__*,int *,int *,int *,int *,int *,int *,int *,char const*,int *,int *) ;
 int svn_wc__write_check (int *,int ,int *) ;

svn_error_t *
svn_wc__move2(svn_wc_context_t *wc_ctx,
              const char *src_abspath,
              const char *dst_abspath,
              svn_boolean_t metadata_only,
              svn_boolean_t allow_mixed_revisions,
              svn_cancel_func_t cancel_func,
              void *cancel_baton,
              svn_wc_notify_func2_t notify_func,
              void *notify_baton,
              apr_pool_t *scratch_pool)
{
  svn_wc__db_t *db = wc_ctx->db;
  svn_boolean_t record_on_delete = TRUE;
  svn_node_kind_t kind;
  svn_boolean_t conflicted;


  SVN_ERR(svn_wc__write_check(wc_ctx->db,
                              svn_dirent_dirname(src_abspath, scratch_pool),
                              scratch_pool));
  SVN_ERR(svn_wc__write_check(wc_ctx->db,
                              svn_dirent_dirname(dst_abspath, scratch_pool),
                              scratch_pool));

  SVN_ERR(copy_or_move(&record_on_delete,
                       wc_ctx, src_abspath, dst_abspath,
                       TRUE ,
                       TRUE ,
                       allow_mixed_revisions,
                       cancel_func, cancel_baton,
                       notify_func, notify_baton,
                       scratch_pool));
  if (!metadata_only)
    {
      svn_error_t *err;

      err = svn_error_trace(svn_io_file_rename2(src_abspath, dst_abspath,
                                                FALSE, scratch_pool));





      if (err)
        return svn_error_trace(
          svn_error_compose_create(
              err,
              svn_wc__db_op_delete(wc_ctx->db, dst_abspath, ((void*)0), TRUE,
                                   ((void*)0), ((void*)0), cancel_func, cancel_baton,
                                   ((void*)0), ((void*)0),
                                   scratch_pool)));
    }

  SVN_ERR(svn_wc__db_read_info(((void*)0), &kind, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               &conflicted, ((void*)0), ((void*)0), ((void*)0),
                               ((void*)0), ((void*)0), ((void*)0),
                               db, src_abspath,
                               scratch_pool, scratch_pool));

  if (kind == svn_node_dir)
    SVN_ERR(remove_all_conflict_markers(db, src_abspath, dst_abspath,
                                        cancel_func, cancel_baton,
                                        scratch_pool));

  if (conflicted)
    {



      SVN_ERR(remove_node_conflict_markers(db, src_abspath,
                                           (kind == svn_node_dir)
                                             ? dst_abspath
                                             : src_abspath,
                                           scratch_pool));
    }

  SVN_ERR(svn_wc__db_op_delete(db, src_abspath,
                               record_on_delete ? dst_abspath : ((void*)0),
                               TRUE ,
                               ((void*)0) , ((void*)0) ,
                               cancel_func, cancel_baton,
                               notify_func, notify_baton,
                               scratch_pool));

  return SVN_NO_ERROR;
}
