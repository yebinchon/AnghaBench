
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int path; int uuid; TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_7__ {scalar_t__ format; int * txn_dir_cache; scalar_t__ concurrent_transactions; } ;
typedef TYPE_2__ fs_fs_data_t ;
typedef int apr_pool_t ;


 int APR_HASH_KEY_STRING ;
 int SVN_CACHE__MEMBUFFER_HIGH_PRIORITY ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_FS_FS__MIN_TXN_CURRENT_FORMAT ;
 int * SVN_NO_ERROR ;
 int SVN_VA_NULL ;
 scalar_t__ TRUE ;
 char* apr_pstrcat (int *,char*,int ,char*,int ,char*,char const*,char*,char*,char*,...) ;
 int create_cache (int **,int *,int ,int,int,int ,int ,int ,char const*,int ,scalar_t__,TYPE_1__*,scalar_t__,int *,int *) ;
 int init_txn_callbacks (TYPE_1__*,int **,int *) ;
 int svn_cache__get_global_membuffer_cache () ;
 int svn_fs_fs__deserialize_dir_entries ;
 int svn_fs_fs__serialize_txndir_entries ;
 int svn_uuid_generate (int *) ;

svn_error_t *
svn_fs_fs__initialize_txn_caches(svn_fs_t *fs,
                                 const char *txn_id,
                                 apr_pool_t *pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  const char *prefix;



  if (ffd->txn_dir_cache != ((void*)0) || ffd->concurrent_transactions)
    {
      ffd->txn_dir_cache = ((void*)0);
      ffd->concurrent_transactions = TRUE;

      return SVN_NO_ERROR;
    }
  if (ffd->format >= SVN_FS_FS__MIN_TXN_CURRENT_FORMAT)
    prefix = apr_pstrcat(pool,
                         "fsfs:", fs->uuid,
                         "/", fs->path,
                         ":", txn_id,
                         ":", "TXNDIR",
                         SVN_VA_NULL);
  else
    prefix = apr_pstrcat(pool,
                         "fsfs:", fs->uuid,
                         "/", fs->path,
                         ":", txn_id,
                         ":", svn_uuid_generate(pool),
                         ":", "TXNDIR",
                         SVN_VA_NULL);


  SVN_ERR(create_cache(&ffd->txn_dir_cache,
                       ((void*)0),
                       svn_cache__get_global_membuffer_cache(),
                       1024, 8,
                       svn_fs_fs__serialize_txndir_entries,
                       svn_fs_fs__deserialize_dir_entries,
                       APR_HASH_KEY_STRING,
                       prefix,
                       SVN_CACHE__MEMBUFFER_HIGH_PRIORITY,
                       TRUE,
                       fs,
                       TRUE,
                       pool, pool));


  init_txn_callbacks(fs, &(ffd->txn_dir_cache), pool);

  return SVN_NO_ERROR;
}
