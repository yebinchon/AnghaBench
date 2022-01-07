
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sdb; int abspath; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_SQLITE__WITH_IMMEDIATE_TXN (int ,int ) ;
 int get_pristine_fname (char const**,int ,int const*,int *,int *) ;
 int pristine_remove_if_unreferenced_txn (int ,TYPE_1__*,int const*,char const*,int *) ;

__attribute__((used)) static svn_error_t *
pristine_remove_if_unreferenced(svn_wc__db_wcroot_t *wcroot,
                                const svn_checksum_t *sha1_checksum,
                                apr_pool_t *scratch_pool)
{
  const char *pristine_abspath;

  SVN_ERR(get_pristine_fname(&pristine_abspath, wcroot->abspath,
                             sha1_checksum, scratch_pool, scratch_pool));



  SVN_SQLITE__WITH_IMMEDIATE_TXN(
    pristine_remove_if_unreferenced_txn(
      wcroot->sdb, wcroot, sha1_checksum, pristine_abspath, scratch_pool),
    wcroot->sdb);

  return SVN_NO_ERROR;
}
