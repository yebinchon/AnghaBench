
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int trail_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int representation_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * make_fulltext_rep (char const*,char const*,int ,int ,int *) ;
 scalar_t__ rep_is_mutable (int *,char const*) ;
 int svn_checksum_empty_checksum (int ,int *) ;
 int svn_checksum_md5 ;
 int svn_checksum_sha1 ;
 int svn_fs_bdb__read_rep (int **,int *,char const*,int *,int *) ;
 int svn_fs_bdb__string_append (int *,char const**,int ,int *,int *,int *) ;
 int * svn_fs_bdb__write_new_rep (char const**,int *,int *,int *,int *) ;

svn_error_t *
svn_fs_base__get_mutable_rep(const char **new_rep_key,
                             const char *rep_key,
                             svn_fs_t *fs,
                             const char *txn_id,
                             trail_t *trail,
                             apr_pool_t *pool)
{
  representation_t *rep = ((void*)0);
  const char *new_str = ((void*)0);




  if (rep_key && (rep_key[0] != '\0'))
    {
      SVN_ERR(svn_fs_bdb__read_rep(&rep, fs, rep_key, trail, pool));
      if (rep_is_mutable(rep, txn_id))
        {
          *new_rep_key = rep_key;
          return SVN_NO_ERROR;
        }
    }




  SVN_ERR(svn_fs_bdb__string_append(fs, &new_str, 0, ((void*)0), trail, pool));
  rep = make_fulltext_rep(new_str, txn_id,
                          svn_checksum_empty_checksum(svn_checksum_md5,
                                                      pool),
                          svn_checksum_empty_checksum(svn_checksum_sha1,
                                                      pool),
                          pool);
  return svn_fs_bdb__write_new_rep(new_rep_key, fs, rep, trail, pool);
}
