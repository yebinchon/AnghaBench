
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int data; } ;
typedef TYPE_3__ svn_string_t ;
typedef int svn_error_t ;
struct TYPE_12__ {TYPE_2__* editor; } ;
typedef TYPE_4__ report_context_t ;
struct TYPE_13__ {int file_baton; scalar_t__ found_lock_prop; scalar_t__ lock_token; TYPE_1__* parent_dir; } ;
typedef TYPE_5__ file_baton_t ;
typedef int apr_pool_t ;
struct TYPE_10__ {int (* change_file_prop ) (int ,char const*,TYPE_3__ const*,int *) ;} ;
struct TYPE_9__ {TYPE_4__* ctx; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int apr_collapse_spaces (char*,char*) ;
 char* apr_pstrdup (int *,int ) ;
 int ensure_file_opened (TYPE_5__*,int *) ;
 scalar_t__ strcmp (char const*,char*) ;
 int stub1 (int ,char const*,TYPE_3__ const*,int *) ;
 char* svn_ra_serf__svnname_from_wirename (char const*,char const*,int *) ;

__attribute__((used)) static svn_error_t *
set_file_props(void *baton,
               const char *path,
               const char *ns,
               const char *name,
               const svn_string_t *val,
               apr_pool_t *scratch_pool)
{
  file_baton_t *file = baton;
  report_context_t *ctx = file->parent_dir->ctx;
  const char *prop_name;

  prop_name = svn_ra_serf__svnname_from_wirename(ns, name, scratch_pool);

  if (!prop_name)
    {
      if (file->lock_token
          && !file->found_lock_prop
          && val
          && strcmp(ns, "DAV:") == 0
          && strcmp(name, "lockdiscovery") == 0)
        {
          char *new_lock;
          new_lock = apr_pstrdup(scratch_pool, val->data);
          apr_collapse_spaces(new_lock, new_lock);

          if (new_lock[0] != '\0')
            file->found_lock_prop = TRUE;
        }

      return SVN_NO_ERROR;
    }

  SVN_ERR(ensure_file_opened(file, scratch_pool));

  SVN_ERR(ctx->editor->change_file_prop(file->file_baton,
                                        prop_name, val,
                                        scratch_pool));

  return SVN_NO_ERROR;
}
