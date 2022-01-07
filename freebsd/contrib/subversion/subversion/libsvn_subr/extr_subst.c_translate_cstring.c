
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ apr_hash_count (int *) ;
 char* apr_pstrmemdup (int *,char const*,int ) ;
 int * stream_translated (int *,char const*,int *,int ,int *,int ,int *) ;
 int strlen (char const*) ;
 int svn_stream_close (int *) ;
 int * svn_stream_from_stringbuf (TYPE_1__*,int *) ;
 int svn_stream_write (int *,char const*,int *) ;
 TYPE_1__* svn_stringbuf_create_empty (int *) ;

__attribute__((used)) static svn_error_t *
translate_cstring(const char **dst,
                  svn_boolean_t *translated_eol,
                  const char *src,
                  const char *eol_str,
                  svn_boolean_t repair,
                  apr_hash_t *keywords,
                  svn_boolean_t expand,
                  apr_pool_t *pool)
{
  svn_stringbuf_t *dst_stringbuf;
  svn_stream_t *dst_stream;
  apr_size_t len = strlen(src);


  if (! (eol_str || (keywords && (apr_hash_count(keywords) > 0))))
    {
      *dst = apr_pstrmemdup(pool, src, len);
      return SVN_NO_ERROR;
    }


  dst_stringbuf = svn_stringbuf_create_empty(pool);
  dst_stream = svn_stream_from_stringbuf(dst_stringbuf, pool);

  if (translated_eol)
    *translated_eol = FALSE;


  dst_stream = stream_translated(dst_stream, eol_str, translated_eol, repair,
                                 keywords, expand, pool);


  SVN_ERR(svn_stream_write(dst_stream, src, &len));


  SVN_ERR(svn_stream_close(dst_stream));

  *dst = dst_stringbuf->data;
  return SVN_NO_ERROR;
}
