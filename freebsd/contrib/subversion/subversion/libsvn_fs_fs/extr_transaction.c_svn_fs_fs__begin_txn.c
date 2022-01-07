
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int data; int len; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_revnum_t ;
struct TYPE_9__ {TYPE_3__* fsap_data; } ;
typedef TYPE_2__ svn_fs_txn_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_10__ {int txn_id; } ;
typedef TYPE_3__ fs_txn_data_t ;
typedef int apr_uint32_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_FS_TXN_CHECK_LOCKS ;
 int SVN_FS_TXN_CHECK_OOD ;
 int SVN_FS_TXN_CLIENT_DATE ;
 int SVN_FS__PROP_TXN_CHECK_LOCKS ;
 int SVN_FS__PROP_TXN_CHECK_OOD ;
 int SVN_FS__PROP_TXN_CLIENT_DATE ;
 int SVN_PROP_REVISION_DATE ;
 int TRUE ;
 int * apr_hash_make (int *) ;
 int apr_time_now () ;
 int set_txn_proplist (int *,int *,int *,int *) ;
 int strlen (int ) ;
 int * svn_error_trace (int ) ;
 int svn_fs__check_fs (int *,int ) ;
 int svn_fs_fs__create_txn (TYPE_2__**,int *,int ,int *) ;
 int svn_hash_sets (int *,int ,TYPE_1__*) ;
 TYPE_1__* svn_string_create (char*,int *) ;
 int svn_time_to_cstring (int ,int *) ;

svn_error_t *
svn_fs_fs__begin_txn(svn_fs_txn_t **txn_p,
                     svn_fs_t *fs,
                     svn_revnum_t rev,
                     apr_uint32_t flags,
                     apr_pool_t *pool)
{
  svn_string_t date;
  fs_txn_data_t *ftd;
  apr_hash_t *props = apr_hash_make(pool);

  SVN_ERR(svn_fs__check_fs(fs, TRUE));

  SVN_ERR(svn_fs_fs__create_txn(txn_p, fs, rev, pool));






  date.data = svn_time_to_cstring(apr_time_now(), pool);
  date.len = strlen(date.data);

  svn_hash_sets(props, SVN_PROP_REVISION_DATE, &date);



  if (flags & SVN_FS_TXN_CHECK_OOD)
    svn_hash_sets(props, SVN_FS__PROP_TXN_CHECK_OOD,
                  svn_string_create("true", pool));

  if (flags & SVN_FS_TXN_CHECK_LOCKS)
    svn_hash_sets(props, SVN_FS__PROP_TXN_CHECK_LOCKS,
                  svn_string_create("true", pool));

  if (flags & SVN_FS_TXN_CLIENT_DATE)
    svn_hash_sets(props, SVN_FS__PROP_TXN_CLIENT_DATE,
                  svn_string_create("0", pool));

  ftd = (*txn_p)->fsap_data;
  return svn_error_trace(set_txn_proplist(fs, &ftd->txn_id, props, pool));
}
