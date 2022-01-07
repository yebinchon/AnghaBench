
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ change_kind; void* prop_mod; void* text_mod; int node_rev_id; } ;
typedef TYPE_1__ svn_fs_path_change2_t ;
typedef int svn_error_t ;
struct TYPE_10__ {char const* path; scalar_t__ kind; void* prop_mod; void* text_mod; int noderev_id; } ;
typedef TYPE_2__ change_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR_ASSERT (TYPE_1__*) ;
 int SVN_ERR_FS_CORRUPT ;
 int * SVN_NO_ERROR ;
 void* TRUE ;
 int _ (char*) ;
 int * apr_hash_pool_get (int *) ;
 char const* apr_pstrdup (int *,char const*) ;
 TYPE_1__* change_to_fs_change (TYPE_2__ const*,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_fs_base__id_eq (int ,int ) ;





 TYPE_1__* svn_hash_gets (int *,char const*) ;
 int svn_hash_sets (int *,char const*,TYPE_1__*) ;

__attribute__((used)) static svn_error_t *
fold_change(apr_hash_t *changes,
            apr_hash_t *deletions,
            const change_t *change)
{
  apr_pool_t *pool = apr_hash_pool_get(changes);
  svn_fs_path_change2_t *old_change, *new_change;
  const char *path;

  if ((old_change = svn_hash_gets(changes, change->path)))
    {





      path = change->path;



      if ((! change->noderev_id) && (change->kind != 128))
        return svn_error_create
          (SVN_ERR_FS_CORRUPT, ((void*)0),
           _("Missing required node revision ID"));




      if (change->noderev_id
          && (! svn_fs_base__id_eq(old_change->node_rev_id,
                                   change->noderev_id))
          && (old_change->change_kind != 131))
        return svn_error_create
          (SVN_ERR_FS_CORRUPT, ((void*)0),
           _("Invalid change ordering: new node revision ID without delete"));



      if ((old_change->change_kind == 131)
          && (! ((change->kind == 129)
                 || (change->kind == 128)
                 || (change->kind == 132))))
        return svn_error_create
          (SVN_ERR_FS_CORRUPT, ((void*)0),
           _("Invalid change ordering: non-add change on deleted path"));



      if ((change->kind == 132)
          && (old_change->change_kind != 131)
          && (old_change->change_kind != 128))
        return svn_error_create
          (SVN_ERR_FS_CORRUPT, ((void*)0),
           _("Invalid change ordering: add change on preexisting path"));


      switch (change->kind)
        {
        case 128:


          new_change = ((void*)0);
          break;

        case 131:
          if (old_change->change_kind == 132)
            {



              new_change = ((void*)0);
            }
          else if (old_change->change_kind == 129)
            {

              new_change = svn_hash_gets(deletions, path);
              SVN_ERR_ASSERT(new_change);
            }
          else
            {

              new_change = old_change;
              new_change->change_kind = 131;
              new_change->text_mod = change->text_mod;
              new_change->prop_mod = change->prop_mod;
            }
          break;

        case 132:
        case 129:



          new_change = change_to_fs_change(change, pool);
          new_change->change_kind = 129;



          svn_hash_sets(deletions,
                        apr_pstrdup(apr_hash_pool_get(deletions), path),
                        old_change);
          break;

        case 130:
        default:
          new_change = old_change;
          if (change->text_mod)
            new_change->text_mod = TRUE;
          if (change->prop_mod)
            new_change->prop_mod = TRUE;
          break;
        }
    }
  else
    {



      new_change = change_to_fs_change(change, pool);
      path = apr_pstrdup(pool, change->path);
    }


  svn_hash_sets(changes, path, new_change);

  return SVN_NO_ERROR;
}
