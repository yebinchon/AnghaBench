
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int uuid; TYPE_3__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_8__ {int txn_list_lock; int txn_current_lock; int fs_pack_lock; int fs_write_lock; int * common_pool; } ;
typedef TYPE_2__ fs_fs_shared_data_t ;
struct TYPE_9__ {TYPE_2__* shared; int instance_id; } ;
typedef TYPE_3__ fs_fs_data_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_FSFS_SHARED_USERDATA_PREFIX ;
 int SVN_FS_FS__USE_LOCK_MUTEX ;
 int * SVN_NO_ERROR ;
 int SVN_VA_NULL ;
 int TRUE ;
 int _ (char*) ;
 TYPE_2__* apr_pcalloc (int *,int) ;
 scalar_t__ apr_pool_userdata_get (void**,char const*,int *) ;
 scalar_t__ apr_pool_userdata_set (TYPE_2__*,char const*,int *,int *) ;
 char* apr_pstrcat (int *,int ,int ,char*,int ,int ) ;
 char* apr_pstrdup (int *,char const*) ;
 int * svn_error_wrap_apr (scalar_t__,int ) ;
 int svn_mutex__init (int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
fs_serialized_init(svn_fs_t *fs, apr_pool_t *common_pool, apr_pool_t *pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  const char *key;
  void *val;
  fs_fs_shared_data_t *ffsd;
  apr_status_t status;
  SVN_ERR_ASSERT(fs->uuid);
  SVN_ERR_ASSERT(ffd->instance_id);

  key = apr_pstrcat(pool, SVN_FSFS_SHARED_USERDATA_PREFIX,
                    fs->uuid, ":", ffd->instance_id, SVN_VA_NULL);
  status = apr_pool_userdata_get(&val, key, common_pool);
  if (status)
    return svn_error_wrap_apr(status, _("Can't fetch FSFS shared data"));
  ffsd = val;

  if (!ffsd)
    {
      ffsd = apr_pcalloc(common_pool, sizeof(*ffsd));
      ffsd->common_pool = common_pool;




      SVN_ERR(svn_mutex__init(&ffsd->fs_write_lock,
                              SVN_FS_FS__USE_LOCK_MUTEX, common_pool));


      SVN_ERR(svn_mutex__init(&ffsd->fs_pack_lock,
                              SVN_FS_FS__USE_LOCK_MUTEX, common_pool));


      SVN_ERR(svn_mutex__init(&ffsd->txn_current_lock,
                              SVN_FS_FS__USE_LOCK_MUTEX, common_pool));



      SVN_ERR(svn_mutex__init(&ffsd->txn_list_lock, TRUE, common_pool));

      key = apr_pstrdup(common_pool, key);
      status = apr_pool_userdata_set(ffsd, key, ((void*)0), common_pool);
      if (status)
        return svn_error_wrap_apr(status, _("Can't store FSFS shared data"));
    }

  ffd->shared = ffsd;

  return SVN_NO_ERROR;
}
