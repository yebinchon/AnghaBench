
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int revision; } ;
typedef TYPE_1__ transaction_t ;
typedef int trail_t ;
typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_txn (TYPE_1__**,int *,char const*,int ,int *,int *) ;

svn_error_t *
svn_fs_base__txn_get_revision(svn_revnum_t *revision,
                              svn_fs_t *fs,
                              const char *txn_name,
                              trail_t *trail,
                              apr_pool_t *pool)
{
  transaction_t *txn;
  SVN_ERR(get_txn(&txn, fs, txn_name, FALSE, trail, pool));
  *revision = txn->revision;
  return SVN_NO_ERROR;
}
