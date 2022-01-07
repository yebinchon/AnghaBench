
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_stream_t ;
typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR_W (int ,int ) ;
 int SVN_HASH_TERMINATOR ;
 int * SVN_NO_ERROR ;
 int * apr_hash_make (int *) ;
 int apr_psprintf (int *,char*,int ) ;
 int svn_hash_read2 (int *,int *,int ,int *) ;
 int * svn_stream_from_string (int *,int *) ;

__attribute__((used)) static svn_error_t *
parse_revprop(apr_hash_t **properties,
              svn_fs_t *fs,
              svn_revnum_t revision,
              svn_string_t *content,
              apr_pool_t *result_pool,
              apr_pool_t *scratch_pool)
{
  svn_stream_t *stream = svn_stream_from_string(content, scratch_pool);
  *properties = apr_hash_make(result_pool);

  SVN_ERR_W(svn_hash_read2(*properties, stream, SVN_HASH_TERMINATOR,
                           result_pool),
            apr_psprintf(scratch_pool, "Failed to parse revprops for r%ld.",
                         revision));

  return SVN_NO_ERROR;
}
