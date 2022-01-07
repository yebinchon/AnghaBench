
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int trail_t ;
typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
struct TYPE_8__ {int node; TYPE_1__* parent; } ;
typedef TYPE_2__ parent_path_t ;
struct TYPE_9__ {int dst_noderev_id; } ;
typedef TYPE_3__ copy_t ;
typedef int copy_id_inherit_t ;
typedef int apr_pool_t ;
struct TYPE_7__ {int node; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int copy_id_inherit_new ;
 int copy_id_inherit_parent ;
 int copy_id_inherit_self ;
 char const* parent_path_path (TYPE_2__*,int *) ;
 scalar_t__ strcmp (char const*,char const*) ;
 char* svn_fs_base__dag_get_created_path (int ) ;
 int * svn_fs_base__dag_get_id (int ) ;
 scalar_t__ svn_fs_base__id_compare (int ,int const*) ;
 char* svn_fs_base__id_copy_id (int const*) ;
 char const* svn_fs_base__id_txn_id (int const*) ;
 int svn_fs_bdb__get_copy (TYPE_3__**,int *,char const*,int *,int *) ;
 scalar_t__ svn_fs_node_unrelated ;

__attribute__((used)) static svn_error_t *
get_copy_inheritance(copy_id_inherit_t *inherit_p,
                     const char **copy_src_path,
                     svn_fs_t *fs,
                     parent_path_t *child,
                     const char *txn_id,
                     trail_t *trail,
                     apr_pool_t *pool)
{
  const svn_fs_id_t *child_id, *parent_id;
  const char *child_copy_id, *parent_copy_id;
  const char *id_path = ((void*)0);

  SVN_ERR_ASSERT(child && child->parent && txn_id);


  *inherit_p = copy_id_inherit_self;
  *copy_src_path = ((void*)0);


  child_id = svn_fs_base__dag_get_id(child->node);
  parent_id = svn_fs_base__dag_get_id(child->parent->node);
  child_copy_id = svn_fs_base__id_copy_id(child_id);
  parent_copy_id = svn_fs_base__id_copy_id(parent_id);


  if (strcmp(svn_fs_base__id_txn_id(child_id), txn_id) == 0)
    return SVN_NO_ERROR;
  if ((strcmp(child_copy_id, "0") == 0)
      || (strcmp(child_copy_id, parent_copy_id) == 0))
    {
      *inherit_p = copy_id_inherit_parent;
      return SVN_NO_ERROR;
    }
  else
    {
      copy_t *copy;
      SVN_ERR(svn_fs_bdb__get_copy(&copy, fs, child_copy_id, trail, pool));
      if ( svn_fs_base__id_compare(copy->dst_noderev_id, child_id)
          == svn_fs_node_unrelated)
        {
          *inherit_p = copy_id_inherit_parent;
          return SVN_NO_ERROR;
        }
    }
  id_path = svn_fs_base__dag_get_created_path(child->node);
  if (strcmp(id_path, parent_path_path(child, pool)) != 0)
    {
      *inherit_p = copy_id_inherit_new;
      *copy_src_path = id_path;
      return SVN_NO_ERROR;
    }


  return SVN_NO_ERROR;
}
