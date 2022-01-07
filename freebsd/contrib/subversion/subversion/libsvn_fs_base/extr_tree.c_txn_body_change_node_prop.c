
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_11__ ;


struct TYPE_20__ {int pool; TYPE_1__* fs; } ;
typedef TYPE_2__ trail_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct change_node_prop_args {int path; TYPE_11__* root; int * value; int name; } ;
struct TYPE_21__ {int node; scalar_t__ parent; } ;
typedef TYPE_3__ parent_path_t ;
struct TYPE_22__ {scalar_t__ format; } ;
typedef TYPE_4__ base_fs_data_t ;
typedef int apr_hash_t ;
struct TYPE_19__ {TYPE_4__* fsap_data; } ;
struct TYPE_18__ {char* txn; int txn_flags; int fs; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_FS_BASE__MIN_MERGEINFO_FORMAT ;
 int SVN_FS_TXN_CHECK_LOCKS ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_MERGEINFO ;
 int TRUE ;
 int * add_change (int ,char const*,int ,int ,int ,int ,int ,TYPE_2__*,int ) ;
 int adjust_parent_mergeinfo_counts (scalar_t__,int,char const*,TYPE_2__*,int ) ;
 int * apr_hash_make (int ) ;
 int make_path_mutable (TYPE_11__*,TYPE_3__*,int ,TYPE_2__*,int ) ;
 int open_path (TYPE_3__**,TYPE_11__*,int ,int ,char const*,TYPE_2__*,int ) ;
 scalar_t__ strcmp (int ,int ) ;
 int svn_fs_base__allow_locked_operation (int ,int ,TYPE_2__*,int ) ;
 int svn_fs_base__dag_get_id (int ) ;
 int svn_fs_base__dag_get_proplist (int **,int ,TYPE_2__*,int ) ;
 int svn_fs_base__dag_set_has_mergeinfo (int ,scalar_t__,scalar_t__*,char const*,TYPE_2__*,int ) ;
 int svn_fs_base__dag_set_proplist (int ,int *,char const*,TYPE_2__*,int ) ;
 int svn_fs_path_change_modify ;
 int svn_hash_sets (int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
txn_body_change_node_prop(void *baton,
                          trail_t *trail)
{
  struct change_node_prop_args *args = baton;
  parent_path_t *parent_path;
  apr_hash_t *proplist;
  const char *txn_id = args->root->txn;
  base_fs_data_t *bfd = trail->fs->fsap_data;

  SVN_ERR(open_path(&parent_path, args->root, args->path, 0, txn_id,
                    trail, trail->pool));



  if (args->root->txn_flags & SVN_FS_TXN_CHECK_LOCKS)
    SVN_ERR(svn_fs_base__allow_locked_operation
            (args->path, FALSE, trail, trail->pool));

  SVN_ERR(make_path_mutable(args->root, parent_path, args->path,
                            trail, trail->pool));
  SVN_ERR(svn_fs_base__dag_get_proplist(&proplist, parent_path->node,
                                        trail, trail->pool));


  if ((! proplist) && (! args->value))
    return SVN_NO_ERROR;


  if (! proplist)
    proplist = apr_hash_make(trail->pool);


  svn_hash_sets(proplist, args->name, args->value);


  SVN_ERR(svn_fs_base__dag_set_proplist(parent_path->node, proplist,
                                        txn_id, trail, trail->pool));







  if ((bfd->format >= SVN_FS_BASE__MIN_MERGEINFO_FORMAT)
      && (strcmp(args->name, SVN_PROP_MERGEINFO) == 0))
    {
      svn_boolean_t had_mergeinfo, has_mergeinfo = args->value != ((void*)0);


      SVN_ERR(svn_fs_base__dag_set_has_mergeinfo(parent_path->node,
                                                 has_mergeinfo,
                                                 &had_mergeinfo, txn_id,
                                                 trail, trail->pool));



      if (parent_path->parent && ((! had_mergeinfo) != (! has_mergeinfo)))
        SVN_ERR(adjust_parent_mergeinfo_counts(parent_path->parent,
                                               has_mergeinfo ? 1 : -1,
                                               txn_id, trail, trail->pool));
    }


  return add_change(args->root->fs, txn_id,
                    args->path, svn_fs_base__dag_get_id(parent_path->node),
                    svn_fs_path_change_modify, FALSE, TRUE, trail,
                    trail->pool);
}
