
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int svn_string_t ;
typedef int svn_mergeinfo_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int mergeinfo_to_stringbuf (int **,int ,int *,int *) ;
 int * svn_stringbuf__morph_into_string (int *) ;

svn_error_t *
svn_mergeinfo_to_string(svn_string_t **output, svn_mergeinfo_t input,
                        apr_pool_t *pool)
{
  svn_stringbuf_t *mergeinfo_buf;

  SVN_ERR(mergeinfo_to_stringbuf(&mergeinfo_buf, input, ((void*)0), pool));
  *output = svn_stringbuf__morph_into_string(mergeinfo_buf);
  return SVN_NO_ERROR;
}
