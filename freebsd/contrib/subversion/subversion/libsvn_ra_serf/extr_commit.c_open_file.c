
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct TYPE_6__ {int working_url; int url; int * pool; int prop_changes; int base_revision; int added; int relpath; int name; TYPE_5__* commit_ctx; TYPE_2__* parent_dir; } ;
typedef TYPE_1__ file_context_t ;
struct TYPE_7__ {TYPE_5__* commit_ctx; } ;
typedef TYPE_2__ dir_context_t ;
typedef int apr_pool_t ;
struct TYPE_8__ {int txn_root_url; int open_batons; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ USING_HTTPV2_COMMIT_SUPPORT (TYPE_5__*) ;
 int apr_hash_make (int *) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;
 int checkout_file (TYPE_1__*,int *) ;
 int svn_path_url_add_component2 (int ,char const*,int *) ;
 int svn_relpath_basename (int ,int *) ;

__attribute__((used)) static svn_error_t *
open_file(const char *path,
          void *parent_baton,
          svn_revnum_t base_revision,
          apr_pool_t *file_pool,
          void **file_baton)
{
  dir_context_t *parent = parent_baton;
  file_context_t *new_file;

  new_file = apr_pcalloc(file_pool, sizeof(*new_file));
  new_file->pool = file_pool;

  new_file->parent_dir = parent;
  new_file->commit_ctx = parent->commit_ctx;
  new_file->relpath = apr_pstrdup(new_file->pool, path);
  new_file->name = svn_relpath_basename(new_file->relpath, ((void*)0));
  new_file->added = FALSE;
  new_file->base_revision = base_revision;
  new_file->prop_changes = apr_hash_make(new_file->pool);

  parent->commit_ctx->open_batons++;

  if (USING_HTTPV2_COMMIT_SUPPORT(parent->commit_ctx))
    {
      new_file->url = svn_path_url_add_component2(parent->commit_ctx->txn_root_url,
                                                  path, new_file->pool);
    }
  else
    {

      SVN_ERR(checkout_file(new_file, new_file->pool ));

      new_file->url = new_file->working_url;
    }

  *file_baton = new_file;

  return SVN_NO_ERROR;
}
