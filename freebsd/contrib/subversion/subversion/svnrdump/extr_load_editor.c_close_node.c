
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int value; } ;
typedef TYPE_4__ svn_prop_t ;
typedef int svn_error_t ;
struct svn_delta_editor_t {int (* close_file ) (scalar_t__,int *,int *) ;int (* change_dir_prop ) (int ,char const*,int ,int *) ;int (* change_file_prop ) (scalar_t__,char const*,int ,int *) ;} ;
struct node_baton {int kind; TYPE_3__* rb; scalar_t__ file_baton; int prop_changes; } ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;
struct TYPE_8__ {int * pool; TYPE_2__* db; TYPE_1__* pb; } ;
struct TYPE_7__ {int baton; } ;
struct TYPE_6__ {struct svn_delta_editor_t* commit_editor; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int ) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 TYPE_4__* apr_hash_this_val (int *) ;
 int stub1 (scalar_t__,char const*,int ,int *) ;
 int stub2 (int ,char const*,int ,int *) ;
 int stub3 (scalar_t__,int *,int *) ;



__attribute__((used)) static svn_error_t *
close_node(void *baton)
{
  struct node_baton *nb = baton;
  const struct svn_delta_editor_t *commit_editor = nb->rb->pb->commit_editor;
  apr_pool_t *pool = nb->rb->pool;
  apr_hash_index_t *hi;

  for (hi = apr_hash_first(pool, nb->prop_changes);
       hi; hi = apr_hash_next(hi))
    {
      const char *name = apr_hash_this_key(hi);
      svn_prop_t *prop = apr_hash_this_val(hi);

      switch (nb->kind)
        {
        case 128:
          SVN_ERR(commit_editor->change_file_prop(nb->file_baton,
                                                  name, prop->value, pool));
          break;
        case 129:
          SVN_ERR(commit_editor->change_dir_prop(nb->rb->db->baton,
                                                 name, prop->value, pool));
          break;
        default:
          break;
        }
    }



  if ((nb->kind == 128) && (nb->file_baton))
    {
      SVN_ERR(commit_editor->close_file(nb->file_baton, ((void*)0), nb->rb->pool));
    }



  return SVN_NO_ERROR;
}
