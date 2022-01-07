
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int sdb; int abspath; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
struct TYPE_11__ {int inner_stream; TYPE_1__* wcroot; } ;
typedef TYPE_2__ svn_wc__db_install_data_t ;
typedef int svn_error_t ;
struct TYPE_12__ {scalar_t__ kind; } ;
typedef TYPE_3__ svn_checksum_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int SVN_SQLITE__WITH_IMMEDIATE_TXN (int ,int ) ;
 int get_pristine_fname (char const**,int ,TYPE_3__ const*,int *,int *) ;
 int pristine_install_txn (int ,int ,char const*,TYPE_3__ const*,TYPE_3__ const*,int *) ;
 scalar_t__ svn_checksum_md5 ;
 scalar_t__ svn_checksum_sha1 ;

svn_error_t *
svn_wc__db_pristine_install(svn_wc__db_install_data_t *install_data,
                            const svn_checksum_t *sha1_checksum,
                            const svn_checksum_t *md5_checksum,
                            apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot = install_data->wcroot;
  const char *pristine_abspath;

  SVN_ERR_ASSERT(sha1_checksum != ((void*)0));
  SVN_ERR_ASSERT(sha1_checksum->kind == svn_checksum_sha1);
  SVN_ERR_ASSERT(md5_checksum != ((void*)0));
  SVN_ERR_ASSERT(md5_checksum->kind == svn_checksum_md5);

  SVN_ERR(get_pristine_fname(&pristine_abspath, wcroot->abspath,
                             sha1_checksum,
                             scratch_pool, scratch_pool));



  SVN_SQLITE__WITH_IMMEDIATE_TXN(
    pristine_install_txn(wcroot->sdb,
                         install_data->inner_stream, pristine_abspath,
                         sha1_checksum, md5_checksum,
                         scratch_pool),
    wcroot->sdb);

  return SVN_NO_ERROR;
}
