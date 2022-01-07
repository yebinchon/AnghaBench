
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
struct TYPE_9__ {int cancel_baton; int cancel_func; int wc_ctx; } ;
typedef TYPE_2__ svn_client_ctx_t ;
typedef int svn_boolean_t ;
struct TYPE_10__ {char const* local_abspath; scalar_t__ kind_on_disk; char const* move_target_abspath; int executable; scalar_t__ added; TYPE_1__* content; int patched_path; scalar_t__ git_symlink_format; scalar_t__ is_special; void* skipped; void* obstructed; scalar_t__ deleted; } ;
typedef TYPE_3__ patch_target_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;
struct TYPE_8__ {scalar_t__ eol_style; int keywords; int eol_str; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 void* TRUE ;
 int create_missing_parents (TYPE_3__*,char const*,TYPE_2__*,int,int *,int *) ;
 char* svn_dirent_dirname (char const*,int *) ;
 int svn_io_check_path (char const*,scalar_t__*,int *) ;
 int svn_io_remove_file2 (char const*,int ,int *) ;
 int svn_io_set_file_executable (char const*,int ,int ,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_none ;
 int svn_stream_copy3 (int *,int *,int ,int ,int *) ;
 int svn_stream_open_readonly (int **,int ,int *,int *) ;
 int svn_stream_puts (int *,char*) ;
 int svn_subst_copy_and_translate4 (int ,char const*,int ,int,int ,void*,int ,int ,int ,int *) ;
 int svn_subst_create_specialfile (int **,char const*,int *,int *) ;
 scalar_t__ svn_subst_eol_style_fixed ;
 scalar_t__ svn_subst_eol_style_native ;
 int svn_wc__move2 (int ,char const*,char const*,void*,int ,int ,int ,int *,int *,int *) ;
 int svn_wc_add_from_disk3 (int ,char const*,int *,int ,int *,int *,int *) ;
 int svn_wc_delete4 (int ,char const*,int ,int ,int ,int ,int *,int *,int *) ;
 int svn_wc_read_kind2 (scalar_t__*,int ,char const*,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
install_patched_target(patch_target_t *target, const char *abs_wc_path,
                       svn_client_ctx_t *ctx, svn_boolean_t dry_run,
                       apr_array_header_t *targets_info,
                       apr_pool_t *pool)
{
  if (target->deleted)
    {
      if (! dry_run)
        {





          SVN_ERR(svn_wc_delete4(ctx->wc_ctx, target->local_abspath,
                                 FALSE , FALSE,
                                 ctx->cancel_func, ctx->cancel_baton,
                                 ((void*)0), ((void*)0) ,
                                 pool));
        }
    }
  else
    {
      svn_node_kind_t parent_db_kind;
      if (target->added)
        {
          const char *parent_abspath;

          parent_abspath = svn_dirent_dirname(target->local_abspath,
                                              pool);



          SVN_ERR(svn_wc_read_kind2(&parent_db_kind, ctx->wc_ctx,
                                    parent_abspath, FALSE, FALSE, pool));



          if (parent_db_kind == svn_node_dir
              || parent_db_kind == svn_node_file)
            {
              if (parent_db_kind != svn_node_dir)
                target->skipped = TRUE;
              else
                {
                  svn_node_kind_t disk_kind;

                  SVN_ERR(svn_io_check_path(parent_abspath, &disk_kind, pool));
                  if (disk_kind != svn_node_dir)
                    target->skipped = TRUE;
                }
            }
          else
            SVN_ERR(create_missing_parents(target, abs_wc_path, ctx,
                                           dry_run, targets_info, pool));

        }
      else
        {
          svn_node_kind_t wc_kind;


          SVN_ERR(svn_wc_read_kind2(&wc_kind, ctx->wc_ctx,
                                    target->local_abspath,
                                    FALSE, FALSE, pool));

          if (target->kind_on_disk == svn_node_none
              || wc_kind != target->kind_on_disk)
            {
              target->skipped = TRUE;
              if (wc_kind != target->kind_on_disk)
                target->obstructed = TRUE;
            }
        }

      if (! dry_run && ! target->skipped)
        {
          if (target->is_special)
            {
              svn_stream_t *stream;
              svn_stream_t *patched_stream;

              SVN_ERR(svn_stream_open_readonly(&patched_stream,
                                               target->patched_path,
                                               pool, pool));
              SVN_ERR(svn_subst_create_specialfile(&stream,
                                                   target->local_abspath,
                                                   pool, pool));
              if (target->git_symlink_format)
                  SVN_ERR(svn_stream_puts(stream, "link "));
              SVN_ERR(svn_stream_copy3(patched_stream, stream,
                                       ctx->cancel_func, ctx->cancel_baton,
                                       pool));
            }
          else
            {
              svn_boolean_t repair_eol;




              repair_eol = (target->content->eol_style ==
                              svn_subst_eol_style_fixed ||
                            target->content->eol_style ==
                              svn_subst_eol_style_native);

              SVN_ERR(svn_subst_copy_and_translate4(
                        target->patched_path,
                        target->move_target_abspath
                          ? target->move_target_abspath
                          : target->local_abspath,
                        target->content->eol_str, repair_eol,
                        target->content->keywords,
                        TRUE , FALSE ,
                        ctx->cancel_func, ctx->cancel_baton, pool));
            }

          if (target->added)
            {





              SVN_ERR(svn_wc_add_from_disk3(ctx->wc_ctx, target->local_abspath,
                                            ((void*)0) ,
                                            FALSE ,
                                            ((void*)0), ((void*)0), pool));
            }


          SVN_ERR(svn_io_set_file_executable(target->move_target_abspath
                                               ? target->move_target_abspath
                                               : target->local_abspath,
                                             target->executable,
                                             FALSE, pool));

          if (target->move_target_abspath)
            {







              SVN_ERR(svn_wc__move2(ctx->wc_ctx,
                                    target->local_abspath,
                                    target->move_target_abspath,
                                    TRUE,
                                    FALSE,
                                    ctx->cancel_func, ctx->cancel_baton,
                                    ((void*)0), ((void*)0),
                                    pool));


              SVN_ERR(svn_io_remove_file2(target->local_abspath, FALSE, pool));
            }
        }
    }

  return SVN_NO_ERROR;
}
