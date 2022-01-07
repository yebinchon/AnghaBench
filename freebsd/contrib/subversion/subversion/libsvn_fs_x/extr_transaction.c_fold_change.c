
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int len; int data; } ;
typedef TYPE_1__ svn_string_t ;
struct TYPE_10__ {scalar_t__ change_kind; TYPE_1__ path; int mergeinfo_mod; void* prop_mod; void* text_mod; } ;
typedef TYPE_2__ svn_fs_x__change_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR_ASSERT (TYPE_2__*) ;
 int SVN_ERR_FS_CORRUPT ;
 int * SVN_NO_ERROR ;
 void* TRUE ;
 int _ (char*) ;
 TYPE_2__* apr_hash_get (int *,int ,int ) ;
 int * apr_hash_pool_get (int *) ;
 int apr_hash_set (int *,int ,int ,TYPE_2__*) ;
 int apr_pstrmemdup (int *,int ,int ) ;
 TYPE_2__* path_change_dup (TYPE_2__ const*,int *) ;
 int * svn_error_create (int ,int *,int ) ;




 int svn_tristate_true ;

__attribute__((used)) static svn_error_t *
fold_change(apr_hash_t *changed_paths,
            apr_hash_t *deletions,
            const svn_fs_x__change_t *change)
{
  apr_pool_t *pool = apr_hash_pool_get(changed_paths);
  svn_fs_x__change_t *old_change, *new_change;
  const svn_string_t *path = &change->path;

  if ((old_change = apr_hash_get(changed_paths, path->data, path->len)))
    {





      if ((old_change->change_kind == 130)
          && (! ((change->change_kind == 128)
                 || (change->change_kind == 131))))
        return svn_error_create
          (SVN_ERR_FS_CORRUPT, ((void*)0),
           _("Invalid change ordering: non-add change on deleted path"));



      if ((change->change_kind == 131)
          && (old_change->change_kind != 130))
        return svn_error_create
          (SVN_ERR_FS_CORRUPT, ((void*)0),
           _("Invalid change ordering: add change on preexisting path"));


      switch (change->change_kind)
        {
        case 130:
          if (old_change->change_kind == 131)
            {



              apr_hash_set(changed_paths, path->data, path->len, ((void*)0));
            }
          else if (old_change->change_kind == 128)
            {

              new_change = apr_hash_get(deletions, path->data, path->len);
              SVN_ERR_ASSERT(new_change);
              apr_hash_set(changed_paths, path->data, path->len, new_change);
            }
          else
            {

              new_change = path_change_dup(change, pool);
              apr_hash_set(changed_paths, path->data, path->len, new_change);
            }
          break;

        case 131:
        case 128:




          new_change = path_change_dup(change, pool);
          new_change->change_kind = 128;

          apr_hash_set(changed_paths, path->data, path->len, new_change);



          apr_hash_set(deletions,
                       apr_pstrmemdup(apr_hash_pool_get(deletions),
                                      path->data, path->len),
                       path->len, old_change);
          break;

        case 129:
        default:



          if (change->text_mod)
            old_change->text_mod = TRUE;
          if (change->prop_mod)
            old_change->prop_mod = TRUE;
          if (change->mergeinfo_mod == svn_tristate_true)
            old_change->mergeinfo_mod = svn_tristate_true;
          break;
        }
    }
  else
    {



      new_change = path_change_dup(change, pool);
      apr_hash_set(changed_paths, new_change->path.data,
                   new_change->path.len, new_change);
    }

  return SVN_NO_ERROR;
}
