
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int trail_t ;
typedef int svn_fs_t ;
typedef int svn_fs_path_change_kind_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
typedef void* svn_boolean_t ;
struct TYPE_3__ {void* prop_mod; void* text_mod; int kind; int const* noderev_id; int path; } ;
typedef TYPE_1__ change_t ;
typedef int apr_pool_t ;


 int svn_fs__canonicalize_abspath (char const*,int *) ;
 int * svn_fs_bdb__changes_add (int *,char const*,TYPE_1__*,int *,int *) ;

__attribute__((used)) static svn_error_t *
add_change(svn_fs_t *fs,
           const char *txn_id,
           const char *path,
           const svn_fs_id_t *noderev_id,
           svn_fs_path_change_kind_t change_kind,
           svn_boolean_t text_mod,
           svn_boolean_t prop_mod,
           trail_t *trail,
           apr_pool_t *pool)
{
  change_t change;
  change.path = svn_fs__canonicalize_abspath(path, pool);
  change.noderev_id = noderev_id;
  change.kind = change_kind;
  change.text_mod = text_mod;
  change.prop_mod = prop_mod;
  return svn_fs_bdb__changes_add(fs, txn_id, &change, trail, pool);
}
