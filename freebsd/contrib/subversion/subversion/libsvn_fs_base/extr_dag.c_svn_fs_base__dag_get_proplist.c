
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int trail_t ;
struct TYPE_8__ {int len; int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
struct TYPE_9__ {int prop_key; } ;
typedef TYPE_2__ node_revision_t ;
struct TYPE_10__ {int id; int fs; } ;
typedef TYPE_3__ dag_node_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_base__dag_get_fs (TYPE_3__*) ;
 int svn_fs_base__rep_contents (TYPE_1__*,int ,int ,int *,int *) ;
 int svn_fs_bdb__get_node_revision (TYPE_2__**,int ,int ,int *,int *) ;
 int * svn_skel__parse (int ,int ,int *) ;
 int svn_skel__parse_proplist (int **,int *,int *) ;

svn_error_t *
svn_fs_base__dag_get_proplist(apr_hash_t **proplist_p,
                              dag_node_t *node,
                              trail_t *trail,
                              apr_pool_t *pool)
{
  node_revision_t *noderev;
  apr_hash_t *proplist = ((void*)0);
  svn_string_t raw_proplist;
  svn_skel_t *proplist_skel;


  SVN_ERR(svn_fs_bdb__get_node_revision(&noderev, node->fs, node->id,
                                        trail, pool));


  if (! noderev->prop_key)
    {
      *proplist_p = ((void*)0);
      return SVN_NO_ERROR;
    }



  SVN_ERR(svn_fs_base__rep_contents(&raw_proplist,
                                    svn_fs_base__dag_get_fs(node),
                                    noderev->prop_key, trail, pool));
  proplist_skel = svn_skel__parse(raw_proplist.data, raw_proplist.len, pool);
  if (proplist_skel)
    SVN_ERR(svn_skel__parse_proplist(&proplist, proplist_skel, pool));

  *proplist_p = proplist;
  return SVN_NO_ERROR;
}
