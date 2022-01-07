
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_fs_t ;
typedef int svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_INCORRECT_PARAMS ;
 int SVN_HASH_TERMINATOR ;
 int _ (char*) ;
 int path_txn_props (int *,int const*,int *) ;
 int * svn_error_compose_create (int *,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_quick_wrapf (int *,int ,int ) ;
 int svn_fs_fs__id_txn_used (int const*) ;
 int * svn_hash_read2 (int *,int *,int ,int *) ;
 int * svn_stream_close (int *) ;
 int svn_stream_open_readonly (int **,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
get_txn_proplist(apr_hash_t *proplist,
                 svn_fs_t *fs,
                 const svn_fs_fs__id_part_t *txn_id,
                 apr_pool_t *pool)
{
  svn_stream_t *stream;
  svn_error_t *err;



  if (!txn_id || !svn_fs_fs__id_txn_used(txn_id))
    return svn_error_create(SVN_ERR_INCORRECT_PARAMS, ((void*)0),
                            _("Internal error: a null transaction id was "
                              "passed to get_txn_proplist()"));


  SVN_ERR(svn_stream_open_readonly(&stream, path_txn_props(fs, txn_id, pool),
                                   pool, pool));


  err = svn_hash_read2(proplist, stream, SVN_HASH_TERMINATOR, pool);
  if (err)
    {
      err = svn_error_compose_create(err, svn_stream_close(stream));
      return svn_error_quick_wrapf(err,
               _("malformed property list in transaction '%s'"),
               path_txn_props(fs, txn_id, pool));
    }

  return svn_stream_close(stream);
}
