
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_21__ {int pool; } ;
typedef TYPE_1__ trail_t ;
struct TYPE_22__ {int data; } ;
typedef TYPE_2__ svn_string_t ;
typedef int svn_mergeinfo_t ;
struct TYPE_23__ {scalar_t__ apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct get_mergeinfo_for_path_baton {scalar_t__ inherit; int pool; int ** mergeinfo; scalar_t__ adjust_inherited_mergeinfo; int path; int root; } ;
struct TYPE_24__ {struct TYPE_24__* parent; int * node; } ;
typedef TYPE_4__ parent_path_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_CORRUPT ;
 scalar_t__ SVN_ERR_MERGEINFO_PARSE_ERROR ;
 int SVN_INVALID_REVNUM ;
 TYPE_3__* SVN_NO_ERROR ;
 int SVN_PROP_MERGEINFO ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 int open_path (TYPE_4__**,int ,int ,int ,int *,TYPE_1__*,int ) ;
 int parent_path_relpath (TYPE_4__*,TYPE_4__*,int ) ;
 int svn_error_clear (TYPE_3__*) ;
 TYPE_3__* svn_error_createf (int ,int *,int ,int ) ;
 TYPE_3__* svn_error_trace (TYPE_3__*) ;
 int svn_fs__append_to_merged_froms (int **,int ,int ,int ) ;
 int svn_fs_base__dag_get_id (int *) ;
 int svn_fs_base__dag_get_mergeinfo_stats (scalar_t__*,int *,int *,TYPE_1__*,int *) ;
 int svn_fs_base__dag_get_proplist (int **,int *,TYPE_1__*,int ) ;
 TYPE_2__* svn_fs_base__id_unparse (int ,int ) ;
 TYPE_2__* svn_hash_gets (int *,int ) ;
 scalar_t__ svn_mergeinfo_explicit ;
 int svn_mergeinfo_inheritable2 (int *,int *,int *,int ,int ,scalar_t__,int ,int ) ;
 scalar_t__ svn_mergeinfo_nearest_ancestor ;
 TYPE_3__* svn_mergeinfo_parse (int **,int ,int ) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int ) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
txn_body_get_mergeinfo_for_path(void *baton, trail_t *trail)
{
  struct get_mergeinfo_for_path_baton *args = baton;
  parent_path_t *parent_path, *nearest_ancestor;
  apr_hash_t *proplist;
  svn_string_t *mergeinfo_string;
  apr_pool_t *iterpool;
  dag_node_t *node = ((void*)0);

  *(args->mergeinfo) = ((void*)0);

  SVN_ERR(open_path(&parent_path, args->root, args->path, 0,
                    ((void*)0), trail, trail->pool));


  nearest_ancestor = parent_path;
  if (args->inherit == svn_mergeinfo_nearest_ancestor)
    {
      if (! parent_path->parent)
        return SVN_NO_ERROR;
      nearest_ancestor = parent_path->parent;
    }

  iterpool = svn_pool_create(trail->pool);
  while (TRUE)
    {
      svn_boolean_t has_mergeinfo;
      apr_int64_t count;

      svn_pool_clear(iterpool);

      node = nearest_ancestor->node;
      SVN_ERR(svn_fs_base__dag_get_mergeinfo_stats(&has_mergeinfo, &count,
                                                   node, trail, iterpool));
      if (has_mergeinfo)
        break;


      if (args->inherit == svn_mergeinfo_explicit)
        {
          svn_pool_destroy(iterpool);
          return SVN_NO_ERROR;
        }

      nearest_ancestor = nearest_ancestor->parent;


      if (! nearest_ancestor)
        {
          svn_pool_destroy(iterpool);
          return SVN_NO_ERROR;
        }
    }
  svn_pool_destroy(iterpool);

  SVN_ERR(svn_fs_base__dag_get_proplist(&proplist, node, trail, trail->pool));
  mergeinfo_string = svn_hash_gets(proplist, SVN_PROP_MERGEINFO);
  if (! mergeinfo_string)
    {
      svn_string_t *id_str =
        svn_fs_base__id_unparse(svn_fs_base__dag_get_id(node), trail->pool);
      return svn_error_createf(SVN_ERR_FS_CORRUPT, ((void*)0),
                               _("Node-revision '%s' claims to have "
                                 "mergeinfo but doesn't"), id_str->data);
    }


  {



    svn_error_t *err = svn_mergeinfo_parse(args->mergeinfo,
                                           mergeinfo_string->data,
                                           args->pool);
    if (err)
      {
        if (err->apr_err == SVN_ERR_MERGEINFO_PARSE_ERROR)
          {
            svn_error_clear(err);
            err = ((void*)0);
            args->mergeinfo = ((void*)0);
          }
        return svn_error_trace(err);
      }
  }





  if (args->adjust_inherited_mergeinfo && (nearest_ancestor != parent_path))
    {
      svn_mergeinfo_t tmp_mergeinfo;

      SVN_ERR(svn_mergeinfo_inheritable2(&tmp_mergeinfo, *args->mergeinfo,
                                         ((void*)0), SVN_INVALID_REVNUM,
                                         SVN_INVALID_REVNUM, TRUE,
                                         trail->pool, trail->pool));
      SVN_ERR(svn_fs__append_to_merged_froms(args->mergeinfo, tmp_mergeinfo,
                                             parent_path_relpath(
                                               parent_path, nearest_ancestor,
                                               trail->pool),
                                             args->pool));
    }

  return SVN_NO_ERROR;
}
