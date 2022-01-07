
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_W (int ,int ) ;
 int SVN_FS_X__RECOVERABLE_RETRY_COUNT ;
 int * SVN_NO_ERROR ;
 int apr_psprintf (int *,char*,int ) ;
 int parse_revprop (int **,int *,int ,int *,int *,int *) ;
 int svn_fs_x__path_revprops (int *,int ,int *) ;
 int svn_fs_x__try_stringbuf_from_file (int **,int *,int ,int,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int * svn_string_create_from_buf (int *,int *) ;
 int verify_checksum (int *,int *) ;

__attribute__((used)) static svn_error_t *
read_non_packed_revprop(apr_hash_t **properties,
                        svn_fs_t *fs,
                        svn_revnum_t rev,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  svn_stringbuf_t *content = ((void*)0);
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);
  svn_boolean_t missing = FALSE;
  int i;

  for (i = 0;
       i < SVN_FS_X__RECOVERABLE_RETRY_COUNT && !missing && !content;
       ++i)
    {
      svn_pool_clear(iterpool);
      SVN_ERR(svn_fs_x__try_stringbuf_from_file(&content,
                                  &missing,
                                  svn_fs_x__path_revprops(fs, rev, iterpool),
                                  i + 1 < SVN_FS_X__RECOVERABLE_RETRY_COUNT,
                                  iterpool));
    }

  if (content)
    {
      svn_string_t *as_string;


      SVN_ERR_W(verify_checksum(content, scratch_pool),
                apr_psprintf(scratch_pool,
                             "Revprop file for r%ld is corrupt",
                             rev));



      as_string = svn_string_create_from_buf(content, result_pool);
      SVN_ERR(parse_revprop(properties, fs, rev, as_string,
                            result_pool, iterpool));
    }

  svn_pool_clear(iterpool);

  return SVN_NO_ERROR;
}
