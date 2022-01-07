
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN__LINE_CHUNK_SIZE ;
 int TRUE ;
 int svn_stream_read_full (int *,char*,int*) ;
 int svn_stringbuf_appendbyte (int *,char) ;
 int svn_stringbuf_chop (int *,int) ;
 int * svn_stringbuf_create_ensure (int ,int *) ;

__attribute__((used)) static svn_error_t *
stream_readline_bytewise(svn_stringbuf_t **stringbuf,
                         svn_boolean_t *eof,
                         const char *eol,
                         svn_stream_t *stream,
                         apr_pool_t *pool)
{
  svn_stringbuf_t *str;
  apr_size_t numbytes;
  const char *match;
  char c;





  str = svn_stringbuf_create_ensure(SVN__LINE_CHUNK_SIZE, pool);


  match = eol;
  while (*match)
    {
      numbytes = 1;
      SVN_ERR(svn_stream_read_full(stream, &c, &numbytes));
      if (numbytes != 1)
        {

          *eof = TRUE;
          *stringbuf = str;
          return SVN_NO_ERROR;
        }

      if (c == *match)
        match++;
      else
        match = eol;

      svn_stringbuf_appendbyte(str, c);
    }

  *eof = FALSE;
  svn_stringbuf_chop(str, match - eol);
  *stringbuf = str;

  return SVN_NO_ERROR;
}
