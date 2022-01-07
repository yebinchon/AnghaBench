
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int len; int data; } ;
typedef TYPE_1__ svn_string_t ;
struct TYPE_11__ {scalar_t__ change_kind; int mergeinfo_mod; void* prop_mod; void* text_mod; scalar_t__ node_rev_id; } ;
typedef TYPE_2__ svn_fs_path_change2_t ;
typedef int svn_error_t ;
struct TYPE_12__ {TYPE_2__ info; TYPE_1__ path; } ;
typedef TYPE_3__ change_t ;
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
 int svn_fs_fs__id_eq (scalar_t__,scalar_t__) ;





 int svn_tristate_true ;

__attribute__((used)) static svn_error_t *
fold_change(apr_hash_t *changed_paths,
            apr_hash_t *deletions,
            const change_t *change)
{
  apr_pool_t *pool = apr_hash_pool_get(changed_paths);
  svn_fs_path_change2_t *old_change, *new_change;
  const svn_string_t *path = &change->path;
  const svn_fs_path_change2_t *info = &change->info;

  if ((old_change = apr_hash_get(changed_paths, path->data, path->len)))
    {





      if ((! info->node_rev_id)
           && (info->change_kind != 128))
        return svn_error_create
          (SVN_ERR_FS_CORRUPT, ((void*)0),
           _("Missing required node revision ID"));




      if (info->node_rev_id
          && (! svn_fs_fs__id_eq(old_change->node_rev_id, info->node_rev_id))
          && (old_change->change_kind != 131))
        return svn_error_create
          (SVN_ERR_FS_CORRUPT, ((void*)0),
           _("Invalid change ordering: new node revision ID "
             "without delete"));



      if ((old_change->change_kind == 131)
          && (! ((info->change_kind == 129)
                 || (info->change_kind == 128)
                 || (info->change_kind == 132))))
        return svn_error_create
          (SVN_ERR_FS_CORRUPT, ((void*)0),
           _("Invalid change ordering: non-add change on deleted path"));



      if ((info->change_kind == 132)
          && (old_change->change_kind != 131)
          && (old_change->change_kind != 128))
        return svn_error_create
          (SVN_ERR_FS_CORRUPT, ((void*)0),
           _("Invalid change ordering: add change on preexisting path"));


      switch (info->change_kind)
        {
        case 128:


          apr_hash_set(changed_paths, path->data, path->len, ((void*)0));
          break;

        case 131:
          if (old_change->change_kind == 132)
            {



              apr_hash_set(changed_paths, path->data, path->len, ((void*)0));
            }
          else if (old_change->change_kind == 129)
            {

              new_change = apr_hash_get(deletions, path->data, path->len);
              SVN_ERR_ASSERT(new_change);
              apr_hash_set(changed_paths, path->data, path->len, new_change);
            }
          else
            {

              new_change = path_change_dup(info, pool);
              apr_hash_set(changed_paths, path->data, path->len, new_change);
            }
          break;

        case 132:
        case 129:




          new_change = path_change_dup(info, pool);
          new_change->change_kind = 129;

          apr_hash_set(changed_paths, path->data, path->len, new_change);



          apr_hash_set(deletions,
                       apr_pstrmemdup(apr_hash_pool_get(deletions),
                                      path->data, path->len),
                       path->len, old_change);
          break;

        case 130:
        default:



          if (info->text_mod)
            old_change->text_mod = TRUE;
          if (info->prop_mod)
            old_change->prop_mod = TRUE;
          if (info->mergeinfo_mod == svn_tristate_true)
            old_change->mergeinfo_mod = svn_tristate_true;
          break;
        }
    }
  else
    {



      apr_hash_set(changed_paths,
                   apr_pstrmemdup(pool, path->data, path->len), path->len,
                   path_change_dup(info, pool));
    }

  return SVN_NO_ERROR;
}
