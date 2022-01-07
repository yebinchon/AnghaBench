
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef scalar_t__ svn_fs_x__txn_id_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_INCORRECT_PARAMS ;
 int SVN_ERR_W (int ,int ) ;
 scalar_t__ SVN_FS_X__INVALID_TXN_ID ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int apr_psprintf (int *,int ,int ) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_fs_x__parse_properties (int **,int ,int *) ;
 int svn_fs_x__path_txn_props (int *,scalar_t__,int *) ;
 int svn_stringbuf__morph_into_string (int *) ;
 int svn_stringbuf_from_file2 (int **,int ,int *) ;

__attribute__((used)) static svn_error_t *
get_txn_proplist(apr_hash_t **proplist,
                 svn_fs_t *fs,
                 svn_fs_x__txn_id_t txn_id,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  svn_stringbuf_t *content;



  if (txn_id == SVN_FS_X__INVALID_TXN_ID)
    return svn_error_create(SVN_ERR_INCORRECT_PARAMS, ((void*)0),
                            _("Internal error: a null transaction id was "
                              "passed to get_txn_proplist()"));


  SVN_ERR(svn_stringbuf_from_file2(&content,
                                   svn_fs_x__path_txn_props(fs, txn_id,
                                                            scratch_pool),
                                   result_pool));


  SVN_ERR_W(svn_fs_x__parse_properties(proplist,
                                   svn_stringbuf__morph_into_string(content),
                                   result_pool),
            apr_psprintf(scratch_pool,
                         _("malformed property list in transaction '%s'"),
                         svn_fs_x__path_txn_props(fs, txn_id, scratch_pool)));

  return SVN_NO_ERROR;
}
