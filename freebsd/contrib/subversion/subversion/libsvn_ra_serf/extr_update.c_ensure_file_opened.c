
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_7__ {int (* add_file ) (int ,int ,int ,int ,int ,int *) ;int (* open_file ) (int ,int ,int ,int ,int *) ;} ;
typedef TYPE_2__ svn_delta_editor_t ;
struct TYPE_8__ {scalar_t__ file_opened; int file_baton; int pool; int copyfrom_rev; int copyfrom_path; TYPE_5__* parent_dir; int relpath; int base_rev; } ;
typedef TYPE_3__ file_baton_t ;
typedef int apr_pool_t ;
struct TYPE_9__ {int dir_baton; TYPE_1__* ctx; } ;
struct TYPE_6__ {TYPE_2__* editor; } ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int ensure_dir_opened (TYPE_5__*,int *) ;
 int stub1 (int ,int ,int ,int ,int *) ;
 int stub2 (int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
ensure_file_opened(file_baton_t *file,
                   apr_pool_t *scratch_pool)
{
  const svn_delta_editor_t *editor = file->parent_dir->ctx->editor;

  if (file->file_opened)
    return SVN_NO_ERROR;


  SVN_ERR(ensure_dir_opened(file->parent_dir, scratch_pool));


  if (SVN_IS_VALID_REVNUM(file->base_rev))
    {
      SVN_ERR(editor->open_file(file->relpath,
                                file->parent_dir->dir_baton,
                                file->base_rev,
                                file->pool,
                                &file->file_baton));
    }
  else
    {
      SVN_ERR(editor->add_file(file->relpath,
                               file->parent_dir->dir_baton,
                               file->copyfrom_path,
                               file->copyfrom_rev,
                               file->pool,
                               &file->file_baton));
    }

  file->file_opened = TRUE;

  return SVN_NO_ERROR;
}
