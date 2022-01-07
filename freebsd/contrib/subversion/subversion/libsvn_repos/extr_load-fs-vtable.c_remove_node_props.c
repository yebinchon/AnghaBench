
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct revision_baton {TYPE_1__* pb; int txn_root; scalar_t__ skipped; } ;
struct node_baton {int pool; int path; struct revision_baton* rb; } ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;
struct TYPE_2__ {int validate_props; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_first (int ,int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 int change_node_prop (int ,int ,char const*,int *,int ,int ) ;
 int svn_fs_node_proplist (int **,int ,int ,int ) ;

__attribute__((used)) static svn_error_t *
remove_node_props(void *baton)
{
  struct node_baton *nb = baton;
  struct revision_baton *rb = nb->rb;
  apr_hash_t *proplist;
  apr_hash_index_t *hi;


  if (rb->skipped)
    return SVN_NO_ERROR;

  SVN_ERR(svn_fs_node_proplist(&proplist,
                               rb->txn_root, nb->path, nb->pool));

  for (hi = apr_hash_first(nb->pool, proplist); hi; hi = apr_hash_next(hi))
    {
      const char *key = apr_hash_this_key(hi);

      SVN_ERR(change_node_prop(rb->txn_root, nb->path, key, ((void*)0),
                               rb->pb->validate_props, nb->pool));
    }

  return SVN_NO_ERROR;
}
