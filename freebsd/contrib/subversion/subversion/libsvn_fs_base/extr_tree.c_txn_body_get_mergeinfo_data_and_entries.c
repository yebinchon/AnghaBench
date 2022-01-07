
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {int fs; int pool; } ;
typedef TYPE_1__ trail_t ;
struct TYPE_20__ {int data; } ;
typedef TYPE_2__ svn_string_t ;
typedef int svn_mergeinfo_t ;
typedef int svn_fs_id_t ;
struct TYPE_21__ {int name; int * id; } ;
typedef TYPE_3__ svn_fs_dirent_t ;
struct TYPE_22__ {scalar_t__ apr_err; } ;
typedef TYPE_4__ svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct get_mergeinfo_data_and_entries_baton {int children_atop_mergeinfo_trees; int receiver_baton; int node_path; int (* receiver ) (int ,int ,int ,int *) ;int * node; } ;
typedef int dag_node_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_FS_CORRUPT ;
 scalar_t__ SVN_ERR_MERGEINFO_PARSE_ERROR ;
 TYPE_4__* SVN_NO_ERROR ;
 int SVN_PROP_MERGEINFO ;
 int _ (char*) ;
 int * apr_hash_first (int ,int *) ;
 int * apr_hash_next (int *) ;
 int * apr_hash_pool_get (int ) ;
 int apr_hash_this (int *,int *,int *,void**) ;
 int apr_pstrdup (int *,int ) ;
 int stub1 (int ,int ,int ,int *) ;
 int svn_error_clear (TYPE_4__*) ;
 TYPE_4__* svn_error_createf (int ,int *,int ,int ) ;
 TYPE_4__* svn_error_trace (TYPE_4__*) ;
 int svn_fs_base__dag_dir_entries (int **,int *,TYPE_1__*,int ) ;
 int svn_fs_base__dag_dup (int *,int *) ;
 int svn_fs_base__dag_get_mergeinfo_stats (scalar_t__*,int*,int *,TYPE_1__*,int *) ;
 int svn_fs_base__dag_get_node (int **,int ,int const*,TYPE_1__*,int *) ;
 int svn_fs_base__dag_get_proplist (int **,int *,TYPE_1__*,int *) ;
 scalar_t__ svn_fs_base__dag_node_kind (int *) ;
 TYPE_2__* svn_fs_base__id_unparse (int const*,int *) ;
 int svn_fspath__join (int ,int ,int *) ;
 TYPE_2__* svn_hash_gets (int *,int ) ;
 int svn_hash_sets (int ,int ,int ) ;
 TYPE_4__* svn_mergeinfo_parse (int *,int ,int *) ;
 scalar_t__ svn_node_dir ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int ) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
txn_body_get_mergeinfo_data_and_entries(void *baton, trail_t *trail)
{
  struct get_mergeinfo_data_and_entries_baton *args = baton;
  dag_node_t *node = args->node;
  apr_hash_t *entries;
  apr_hash_index_t *hi;
  apr_pool_t *iterpool = svn_pool_create(trail->pool);
  apr_pool_t *children_pool =
    apr_hash_pool_get(args->children_atop_mergeinfo_trees);

  SVN_ERR_ASSERT(svn_fs_base__dag_node_kind(node) == svn_node_dir);

  SVN_ERR(svn_fs_base__dag_dir_entries(&entries, node, trail, trail->pool));
  for (hi = apr_hash_first(trail->pool, entries); hi; hi = apr_hash_next(hi))
    {
      void *val;
      svn_fs_dirent_t *dirent;
      const svn_fs_id_t *child_id;
      dag_node_t *child_node;
      svn_boolean_t has_mergeinfo;
      apr_int64_t kid_count;

      svn_pool_clear(iterpool);
      apr_hash_this(hi, ((void*)0), ((void*)0), &val);
      dirent = val;
      child_id = dirent->id;


      SVN_ERR(svn_fs_base__dag_get_node(&child_node, trail->fs, child_id,
                                        trail, iterpool));


      SVN_ERR(svn_fs_base__dag_get_mergeinfo_stats(&has_mergeinfo, &kid_count,
                                                   child_node, trail,
                                                   iterpool));


      if (has_mergeinfo)
        {
          apr_hash_t *plist;
          svn_mergeinfo_t child_mergeinfo;
          svn_string_t *pval;
          svn_error_t *err;

          SVN_ERR(svn_fs_base__dag_get_proplist(&plist, child_node,
                                                trail, iterpool));
          pval = svn_hash_gets(plist, SVN_PROP_MERGEINFO);
          if (! pval)
            {
              svn_string_t *id_str = svn_fs_base__id_unparse(child_id,
                                                             iterpool);
              return svn_error_createf(SVN_ERR_FS_CORRUPT, ((void*)0),
                                       _("Node-revision '%s' claims to have "
                                         "mergeinfo but doesn't"),
                                       id_str->data);
            }



          err = svn_mergeinfo_parse(&child_mergeinfo, pval->data,
                                    iterpool);
          if (err)
            {
              if (err->apr_err == SVN_ERR_MERGEINFO_PARSE_ERROR)
                svn_error_clear(err);
              else
                return svn_error_trace(err);
            }
          else
            {
              SVN_ERR(args->receiver(svn_fspath__join(args->node_path,
                                                      dirent->name,
                                                      iterpool),
                                     child_mergeinfo,
                                     args->receiver_baton,
                                     iterpool));
            }
        }





      if ((kid_count - (has_mergeinfo ? 1 : 0)) > 0)
        {
          if (svn_fs_base__dag_node_kind(child_node) != svn_node_dir)
            {
              svn_string_t *id_str = svn_fs_base__id_unparse(child_id,
                                                             iterpool);
              return svn_error_createf(SVN_ERR_FS_CORRUPT, ((void*)0),
                                       _("Node-revision '%s' claims to sit "
                                         "atop a tree containing mergeinfo "
                                         "but is not a directory"),
                                       id_str->data);
            }
          svn_hash_sets(args->children_atop_mergeinfo_trees,
                        apr_pstrdup(children_pool, dirent->name),
                        svn_fs_base__dag_dup(child_node, children_pool));
        }
    }

  svn_pool_destroy(iterpool);
  return SVN_NO_ERROR;
}
