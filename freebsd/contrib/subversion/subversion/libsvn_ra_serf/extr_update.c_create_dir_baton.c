
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_8__ {TYPE_3__* cur_dir; TYPE_1__* sess; int switched_paths; int * pool; } ;
typedef TYPE_2__ report_context_t ;
struct TYPE_9__ {int ref_count; void* copyfrom_rev; void* base_rev; void* repos_relpath; void* relpath; int base_name; struct TYPE_9__* parent_dir; TYPE_2__* ctx; int * pool; } ;
typedef TYPE_3__ dir_baton_t ;
typedef int apr_pool_t ;
struct TYPE_7__ {int session_url_str; int repos_root_str; } ;


 void* SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 TYPE_3__* apr_pcalloc (int *,int) ;
 void* apr_pstrdup (int *,char const*) ;
 void* svn_hash_gets (int ,void*) ;
 int * svn_pool_create (int *) ;
 int svn_relpath_basename (void*,int *) ;
 void* svn_relpath_join (void*,char const*,int *) ;
 void* svn_uri_skip_ancestor (int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
create_dir_baton(dir_baton_t **new_dir,
                 report_context_t *ctx,
                 const char *name,
                 apr_pool_t *scratch_pool)
{
  dir_baton_t *parent = ctx->cur_dir;
  apr_pool_t *dir_pool;
  dir_baton_t *dir;

  if (parent)
    dir_pool = svn_pool_create(parent->pool);
  else
    dir_pool = svn_pool_create(ctx->pool);

  dir = apr_pcalloc(dir_pool, sizeof(*dir));
  dir->pool = dir_pool;
  dir->ctx = ctx;

  if (parent)
    {
      dir->parent_dir = parent;
      parent->ref_count++;
    }

  dir->relpath = parent ? svn_relpath_join(parent->relpath, name, dir_pool)
                        : apr_pstrdup(dir_pool, name);
  dir->base_name = svn_relpath_basename(dir->relpath, ((void*)0));

  dir->repos_relpath = svn_hash_gets(ctx->switched_paths, dir->relpath);
  if (!dir->repos_relpath)
    {
      if (parent)
        dir->repos_relpath = svn_relpath_join(parent->repos_relpath, name,
                                              dir_pool);
      else
        dir->repos_relpath = svn_uri_skip_ancestor(ctx->sess->repos_root_str,
                                                   ctx->sess->session_url_str,
                                                   dir_pool);
    }

  dir->base_rev = SVN_INVALID_REVNUM;
  dir->copyfrom_rev = SVN_INVALID_REVNUM;

  dir->ref_count = 1;

  ctx->cur_dir = dir;

  *new_dir = dir;
  return SVN_NO_ERROR;
}
