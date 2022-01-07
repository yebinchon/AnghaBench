
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_node_kind_t ;
typedef int svn_fs_t ;
typedef int svn_fs_path_change_kind_t ;
struct TYPE_4__ {int copyfrom_path; int copyfrom_rev; int copyfrom_known; int node_kind; int mergeinfo_mod; void* prop_mod; void* text_mod; } ;
typedef TYPE_1__ svn_fs_path_change2_t ;
typedef int svn_fs_id_t ;
typedef int svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
typedef void* svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_file_t ;


 int APR_APPEND ;
 int APR_CREATE ;
 int APR_OS_DEFAULT ;
 int APR_WRITE ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int TRUE ;
 int * apr_hash_make (int *) ;
 int apr_pstrdup (int *,char const*) ;
 int path_txn_changes (int *,int const*,int *) ;
 TYPE_1__* svn_fs__path_change_create_internal (int const*,int ,int *) ;
 int svn_fs_fs__write_changes (int ,int *,int *,int ,int *) ;
 int svn_hash_sets (int *,char const*,TYPE_1__*) ;
 int * svn_io_file_close (int *,int *) ;
 int svn_io_file_open (int **,int ,int,int ,int *) ;
 int svn_stream_from_aprfile2 (int *,int ,int *) ;
 int svn_tristate_false ;
 int svn_tristate_true ;

svn_error_t *
svn_fs_fs__add_change(svn_fs_t *fs,
                      const svn_fs_fs__id_part_t *txn_id,
                      const char *path,
                      const svn_fs_id_t *id,
                      svn_fs_path_change_kind_t change_kind,
                      svn_boolean_t text_mod,
                      svn_boolean_t prop_mod,
                      svn_boolean_t mergeinfo_mod,
                      svn_node_kind_t node_kind,
                      svn_revnum_t copyfrom_rev,
                      const char *copyfrom_path,
                      apr_pool_t *pool)
{
  apr_file_t *file;
  svn_fs_path_change2_t *change;
  apr_hash_t *changes = apr_hash_make(pool);


  SVN_ERR(svn_io_file_open(&file, path_txn_changes(fs, txn_id, pool),
                           APR_APPEND | APR_WRITE | APR_CREATE,
                           APR_OS_DEFAULT, pool));

  change = svn_fs__path_change_create_internal(id, change_kind, pool);
  change->text_mod = text_mod;
  change->prop_mod = prop_mod;
  change->mergeinfo_mod = mergeinfo_mod
                        ? svn_tristate_true
                        : svn_tristate_false;
  change->node_kind = node_kind;
  change->copyfrom_known = TRUE;
  change->copyfrom_rev = copyfrom_rev;
  if (copyfrom_path)
    change->copyfrom_path = apr_pstrdup(pool, copyfrom_path);

  svn_hash_sets(changes, path, change);
  SVN_ERR(svn_fs_fs__write_changes(svn_stream_from_aprfile2(file, TRUE, pool),
                                   fs, changes, FALSE, pool));

  return svn_io_file_close(file, pool);
}
