
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_fs__id_part_t ;
typedef int svn_error_t ;


 int SVN_ERR_FS_MALFORMED_TXN_ID ;
 int * SVN_NO_ERROR ;
 int * svn_error_createf (int ,int *,char*,char const*) ;
 int txn_id_parse (int *,char const*) ;

svn_error_t *
svn_fs_fs__id_txn_parse(svn_fs_fs__id_part_t *txn_id,
                        const char *data)
{
  if (! txn_id_parse(txn_id, data))
    return svn_error_createf(SVN_ERR_FS_MALFORMED_TXN_ID, ((void*)0),
                             "malformed txn id '%s'", data);

  return SVN_NO_ERROR;
}
