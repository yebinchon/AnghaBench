
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_node_kind_t ;
typedef int svn_error_t ;
struct merge_dir_baton_t {scalar_t__ pending_deletes; int pool; } ;
struct TYPE_5__ {scalar_t__ ancestral; } ;
struct TYPE_6__ {int merged_abspaths; scalar_t__ added_abspaths; scalar_t__ reintegrate_merge; TYPE_1__ merge_source; } ;
typedef TYPE_2__ merge_cmd_baton_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 scalar_t__ apr_hash_make (int ) ;
 char* apr_pstrdup (int ,char const*) ;
 int notify_merge_begin (TYPE_2__*,char const*,int ,int *) ;
 int store_path (int ,char const*) ;
 int svn_hash_sets (scalar_t__,char const*,int *) ;
 int * svn_node_kind_to_word (int ) ;

__attribute__((used)) static svn_error_t *
record_update_delete(merge_cmd_baton_t *merge_b,
                     struct merge_dir_baton_t *parent_db,
                     const char *local_abspath,
                     svn_node_kind_t kind,
                     apr_pool_t *scratch_pool)
{

  if (merge_b->merge_source.ancestral
      || merge_b->reintegrate_merge)
    {



      svn_hash_sets(merge_b->added_abspaths, local_abspath, ((void*)0));
      store_path(merge_b->merged_abspaths, local_abspath);
    }

  SVN_ERR(notify_merge_begin(merge_b, local_abspath, TRUE, scratch_pool));

  if (parent_db)
    {
      const char *dup_abspath = apr_pstrdup(parent_db->pool, local_abspath);

      if (!parent_db->pending_deletes)
        parent_db->pending_deletes = apr_hash_make(parent_db->pool);

      svn_hash_sets(parent_db->pending_deletes, dup_abspath,
                    svn_node_kind_to_word(kind));
    }

  return SVN_NO_ERROR;
}
