
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR_ASSERT (int) ;
 int * svn_error_trace (int ) ;
 int svn_stream_copy3 (int *,int *,int *,int *,int *) ;
 int * svn_stream_disown (int *,int *) ;
 int * svn_subst_stream_translated (int *,char const*,int ,int *,int ,int *) ;

svn_error_t *
svn_subst_translate_stream3(svn_stream_t *src_stream,
                            svn_stream_t *dst_stream,
                            const char *eol_str,
                            svn_boolean_t repair,
                            apr_hash_t *keywords,
                            svn_boolean_t expand,
                            apr_pool_t *pool)
{

  SVN_ERR_ASSERT(eol_str || keywords);


  src_stream = svn_stream_disown(src_stream, pool);
  dst_stream = svn_stream_disown(dst_stream, pool);



  dst_stream = svn_subst_stream_translated(dst_stream, eol_str, repair,
                                           keywords, expand, pool);

  return svn_error_trace(svn_stream_copy3(src_stream, dst_stream,
                                          ((void*)0), ((void*)0), pool));
}
