
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_fs_t ;
struct TYPE_6__ {TYPE_2__* fsap_data; int pool; int txn; int rev; int txn_flags; int is_txn_root; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
struct TYPE_7__ {int txn_node_cache; int txn_id; } ;
typedef TYPE_2__ fs_txn_root_data_t ;
typedef int apr_uint32_t ;
typedef int apr_pool_t ;


 int APR_HASH_KEY_STRING ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_VA_NULL ;
 int TRUE ;
 TYPE_2__* apr_pcalloc (int ,int) ;
 int apr_pstrcat (int *,int const*,char*,int ) ;
 TYPE_1__* make_root (int *,int *) ;
 int svn_cache__create_inprocess (int *,int ,int ,int ,int,int,int ,int ,int ) ;
 int svn_fs_fs__dag_deserialize ;
 int svn_fs_fs__dag_serialize ;
 int svn_fs_fs__id_txn_unparse (int const*,int ) ;
 int svn_fs_fs__initialize_txn_caches (int *,int ,int ) ;

__attribute__((used)) static svn_error_t *
make_txn_root(svn_fs_root_t **root_p,
              svn_fs_t *fs,
              const svn_fs_fs__id_part_t *txn,
              svn_revnum_t base_rev,
              apr_uint32_t flags,
              apr_pool_t *pool)
{
  svn_fs_root_t *root = make_root(fs, pool);
  fs_txn_root_data_t *frd = apr_pcalloc(root->pool, sizeof(*frd));
  frd->txn_id = *txn;

  root->is_txn_root = TRUE;
  root->txn = svn_fs_fs__id_txn_unparse(txn, root->pool);
  root->txn_flags = flags;
  root->rev = base_rev;






  SVN_ERR(svn_cache__create_inprocess(&(frd->txn_node_cache),
                                      svn_fs_fs__dag_serialize,
                                      svn_fs_fs__dag_deserialize,
                                      APR_HASH_KEY_STRING,
                                      32, 20, FALSE,
                                      apr_pstrcat(pool, txn, ":TXN",
                                                  SVN_VA_NULL),
                                      root->pool));





  SVN_ERR(svn_fs_fs__initialize_txn_caches(fs, root->txn, root->pool));

  root->fsap_data = frd;

  *root_p = root;
  return SVN_NO_ERROR;
}
