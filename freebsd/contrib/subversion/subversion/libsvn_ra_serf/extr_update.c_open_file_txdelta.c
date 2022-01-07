
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_9__ {int (* apply_textdelta ) (int ,int ,int ,int **,int *) ;} ;
typedef TYPE_3__ svn_delta_editor_t ;
struct TYPE_10__ {int txdelta_baton; int * txdelta; int pool; int base_md5_checksum; int file_baton; TYPE_2__* parent_dir; } ;
typedef TYPE_4__ file_baton_t ;
typedef int apr_pool_t ;
struct TYPE_8__ {TYPE_1__* ctx; } ;
struct TYPE_7__ {TYPE_3__* editor; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int ensure_file_opened (TYPE_4__*,int *) ;
 int stub1 (int ,int ,int ,int **,int *) ;
 int svn_checksum_to_cstring (int ,int *) ;

__attribute__((used)) static svn_error_t *
open_file_txdelta(file_baton_t *file,
                  apr_pool_t *scratch_pool)
{
  const svn_delta_editor_t *editor = file->parent_dir->ctx->editor;

  SVN_ERR_ASSERT(file->txdelta == ((void*)0));

  SVN_ERR(ensure_file_opened(file, scratch_pool));



  SVN_ERR(editor->apply_textdelta(file->file_baton,
                                  svn_checksum_to_cstring(
                                                  file->base_md5_checksum,
                                                  scratch_pool),
                                  file->pool,
                                  &file->txdelta,
                                  &file->txdelta_baton));

  return SVN_NO_ERROR;
}
