
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int trail_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_7__ {int data_key; int prop_key; } ;
typedef TYPE_1__ node_revision_t ;
struct TYPE_8__ {int id; } ;
typedef TYPE_2__ dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int maybe_deltify_mutable_rep (int ,int ,char const*,int *,int *) ;
 int * svn_fs_base__dag_get_fs (TYPE_2__*) ;
 int svn_fs_bdb__get_node_revision (TYPE_1__**,int *,int ,int *,int *) ;

svn_error_t *
svn_fs_base__dag_deltify(dag_node_t *target,
                         dag_node_t *source,
                         svn_boolean_t props_only,
                         const char *txn_id,
                         trail_t *trail,
                         apr_pool_t *pool)
{
  node_revision_t *source_nr, *target_nr;
  svn_fs_t *fs = svn_fs_base__dag_get_fs(target);


  SVN_ERR(svn_fs_bdb__get_node_revision(&target_nr, fs, target->id,
                                        trail, pool));
  SVN_ERR(svn_fs_bdb__get_node_revision(&source_nr, fs, source->id,
                                        trail, pool));



  SVN_ERR(maybe_deltify_mutable_rep(target_nr->prop_key, source_nr->prop_key,
                                    txn_id, trail, pool));




  if (! props_only)
    SVN_ERR(maybe_deltify_mutable_rep(target_nr->data_key, source_nr->data_key,
                                      txn_id, trail, pool));

  return SVN_NO_ERROR;
}
