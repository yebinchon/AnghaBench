
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int SVN_FS_FS__RECOVERABLE_RETRY_COUNT ;
 int * SVN_NO_ERROR ;
 int cache_revprops (int *,int *,int ,int *,int *) ;
 int parse_revprop (int **,int *,int ,int *,int *,int *) ;
 int svn_fs_fs__path_revprops (int *,int ,int *) ;
 int svn_fs_fs__try_stringbuf_from_file (int **,scalar_t__*,int ,int,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int * svn_stringbuf__morph_into_string (int *) ;

__attribute__((used)) static svn_error_t *
read_non_packed_revprop(apr_hash_t **properties,
                        svn_fs_t *fs,
                        svn_revnum_t rev,
                        svn_boolean_t populate_cache,
                        apr_pool_t *pool)
{
  svn_stringbuf_t *content = ((void*)0);
  apr_pool_t *iterpool = svn_pool_create(pool);
  svn_boolean_t missing = FALSE;
  int i;

  for (i = 0;
       i < SVN_FS_FS__RECOVERABLE_RETRY_COUNT && !missing && !content;
       ++i)
    {
      svn_pool_clear(iterpool);
      SVN_ERR(svn_fs_fs__try_stringbuf_from_file(&content,
                              &missing,
                              svn_fs_fs__path_revprops(fs, rev, iterpool),
                              i + 1 < SVN_FS_FS__RECOVERABLE_RETRY_COUNT ,
                              iterpool));
    }

  if (content)
    {
      svn_string_t *as_string = svn_stringbuf__morph_into_string(content);
      SVN_ERR(parse_revprop(properties, fs, rev, as_string, pool, iterpool));

      if (populate_cache)
        SVN_ERR(cache_revprops(((void*)0), fs, rev, as_string, iterpool));
    }

  svn_pool_clear(iterpool);

  return SVN_NO_ERROR;
}
