
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int trail_t ;
struct TYPE_8__ {int data; int len; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_revnum_t ;
struct TYPE_9__ {char* id; int * fs; } ;
typedef TYPE_2__ svn_fs_txn_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_10__ {char const* txn_id; } ;
typedef TYPE_3__ revision_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_FS__PROP_TXN_CHECK_LOCKS ;
 int SVN_FS__PROP_TXN_CHECK_OOD ;
 int SVN_FS__PROP_TXN_CLIENT_DATE ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_REVISION_DATE ;
 int apr_time_now () ;
 scalar_t__ strcmp (int ,char*) ;
 int strlen (int ) ;
 int svn_fs_base__set_rev_prop (int *,int ,int ,int *,TYPE_1__*,int *,int *) ;
 int svn_fs_base__set_txn_prop (int *,char const*,int ,int *,int *,int *) ;
 int svn_fs_base__txn_make_committed (int *,char const*,int ,int *,int *) ;
 int svn_fs_base__txn_proplist_in_trail (int **,char const*,int *) ;
 int svn_fs_bdb__put_rev (int *,int *,TYPE_3__*,int *,int *) ;
 TYPE_1__* svn_hash_gets (int *,int ) ;
 int svn_time_to_cstring (int ,int *) ;

svn_error_t *
svn_fs_base__dag_commit_txn(svn_revnum_t *new_rev,
                            svn_fs_txn_t *txn,
                            trail_t *trail,
                            apr_pool_t *pool)
{
  revision_t revision;
  apr_hash_t *txnprops;
  svn_fs_t *fs = txn->fs;
  const char *txn_id = txn->id;
  const svn_string_t *client_date;



  SVN_ERR(svn_fs_base__txn_proplist_in_trail(&txnprops, txn_id, trail));


  revision.txn_id = txn_id;
  *new_rev = SVN_INVALID_REVNUM;
  SVN_ERR(svn_fs_bdb__put_rev(new_rev, fs, &revision, trail, pool));

  if (svn_hash_gets(txnprops, SVN_FS__PROP_TXN_CHECK_OOD))
    SVN_ERR(svn_fs_base__set_txn_prop
            (fs, txn_id, SVN_FS__PROP_TXN_CHECK_OOD, ((void*)0), trail, pool));

  if (svn_hash_gets(txnprops, SVN_FS__PROP_TXN_CHECK_LOCKS))
    SVN_ERR(svn_fs_base__set_txn_prop
            (fs, txn_id, SVN_FS__PROP_TXN_CHECK_LOCKS, ((void*)0), trail, pool));

  client_date = svn_hash_gets(txnprops, SVN_FS__PROP_TXN_CLIENT_DATE);
  if (client_date)
    SVN_ERR(svn_fs_base__set_txn_prop
            (fs, txn_id, SVN_FS__PROP_TXN_CLIENT_DATE, ((void*)0), trail, pool));


  SVN_ERR(svn_fs_base__txn_make_committed(fs, txn_id, *new_rev,
                                          trail, pool));

  if (!client_date || strcmp(client_date->data, "1"))
    {


      svn_string_t date;
      date.data = svn_time_to_cstring(apr_time_now(), pool);
      date.len = strlen(date.data);
      SVN_ERR(svn_fs_base__set_rev_prop(fs, *new_rev, SVN_PROP_REVISION_DATE,
                                        ((void*)0), &date, trail, pool));
    }

  return SVN_NO_ERROR;
}
