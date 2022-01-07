
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_x__txn_id_t ;
typedef int svn_error_t ;
typedef int apr_uint64_t ;


 int SVN_ERR_INCORRECT_PARAMS ;
 int * SVN_NO_ERROR ;
 int svn__base36toui64 (char const**,char const*) ;
 int * svn_error_createf (int ,int *,char*,char const*) ;

svn_error_t *
svn_fs_x__txn_by_name(svn_fs_x__txn_id_t *txn_id,
                      const char *txn_name)
{
  const char *next;
  apr_uint64_t id = svn__base36toui64(&next, txn_name);
  if (next == ((void*)0) || *next != 0 || *txn_name == 0)
    return svn_error_createf(SVN_ERR_INCORRECT_PARAMS, ((void*)0),
                             "Malformed TXN name '%s'", txn_name);

  *txn_id = id;
  return SVN_NO_ERROR;
}
