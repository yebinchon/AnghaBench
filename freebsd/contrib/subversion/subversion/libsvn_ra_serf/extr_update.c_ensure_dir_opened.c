
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_10__ {TYPE_3__* editor; int editor_baton; int update_target; TYPE_2__* sess; scalar_t__ destination; } ;
typedef TYPE_4__ report_context_t ;
struct TYPE_11__ {char* base_name; scalar_t__ dir_opened; int dir_baton; int pool; int copyfrom_rev; int copyfrom_path; struct TYPE_11__* parent_dir; int relpath; int base_rev; TYPE_4__* ctx; } ;
typedef TYPE_5__ dir_baton_t ;
typedef int apr_pool_t ;
struct TYPE_9__ {int * (* add_directory ) (int ,int ,int ,int ,int ,int *) ;int * (* open_directory ) (int ,int ,int ,int ,int *) ;int * (* open_root ) (int ,int ,int ,int *) ;} ;
struct TYPE_8__ {int wc_callback_baton; TYPE_1__* wc_callbacks; } ;
struct TYPE_7__ {int * (* invalidate_wc_props ) (int ,int ,int ,int *) ;} ;


 int SVN_ERR (int *) ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_RA_SERF__WC_CHECKED_IN_URL ;
 scalar_t__ TRUE ;
 int * stub1 (int ,int ,int ,int *) ;
 int * stub2 (int ,int ,int ,int *) ;
 int * stub3 (int ,int ,int ,int ,int *) ;
 int * stub4 (int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static svn_error_t*
ensure_dir_opened(dir_baton_t *dir,
                  apr_pool_t *scratch_pool)
{
  report_context_t *ctx = dir->ctx;

  if (dir->dir_opened)
    return SVN_NO_ERROR;

  if (dir->base_name[0] == '\0')
    {
      if (ctx->destination
          && ctx->sess->wc_callbacks->invalidate_wc_props)
        {
          SVN_ERR(ctx->sess->wc_callbacks->invalidate_wc_props(
                      ctx->sess->wc_callback_baton,
                      ctx->update_target,
                      SVN_RA_SERF__WC_CHECKED_IN_URL, scratch_pool));
        }

      SVN_ERR(ctx->editor->open_root(ctx->editor_baton, dir->base_rev,
                                     dir->pool,
                                     &dir->dir_baton));
    }
  else
    {
      SVN_ERR(ensure_dir_opened(dir->parent_dir, scratch_pool));

      if (SVN_IS_VALID_REVNUM(dir->base_rev))
        {
          SVN_ERR(ctx->editor->open_directory(dir->relpath,
                                              dir->parent_dir->dir_baton,
                                              dir->base_rev,
                                              dir->pool,
                                              &dir->dir_baton));
        }
      else
        {
          SVN_ERR(ctx->editor->add_directory(dir->relpath,
                                             dir->parent_dir->dir_baton,
                                             dir->copyfrom_path,
                                             dir->copyfrom_rev,
                                             dir->pool,
                                             &dir->dir_baton));
        }
    }

  dir->dir_opened = TRUE;

  return SVN_NO_ERROR;
}
