
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_fs_x__txn_id_t ;
typedef int svn_fs_t ;
struct TYPE_6__ {TYPE_2__* fsap_data; int rev; int txn_flags; int pool; int txn; int is_txn_root; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_error_t ;
struct TYPE_7__ {int txn_id; } ;
typedef TYPE_2__ fs_txn_root_data_t ;
typedef int apr_uint32_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int TRUE ;
 TYPE_2__* apr_pcalloc (int ,int) ;
 TYPE_1__* make_root (int *,int *) ;
 int svn_fs_x__txn_name (int ,int ) ;

__attribute__((used)) static svn_error_t *
make_txn_root(svn_fs_root_t **root_p,
              svn_fs_t *fs,
              svn_fs_x__txn_id_t txn_id,
              svn_revnum_t base_rev,
              apr_uint32_t flags,
              apr_pool_t *result_pool)
{
  svn_fs_root_t *root = make_root(fs, result_pool);
  fs_txn_root_data_t *frd = apr_pcalloc(root->pool, sizeof(*frd));
  frd->txn_id = txn_id;

  root->is_txn_root = TRUE;
  root->txn = svn_fs_x__txn_name(txn_id, root->pool);
  root->txn_flags = flags;
  root->rev = base_rev;
  root->fsap_data = frd;

  *root_p = root;
  return SVN_NO_ERROR;
}
