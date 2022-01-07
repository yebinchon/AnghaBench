
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ svn_txdelta_window_handler_t ;
typedef int svn_stream_t ;
struct TYPE_3__ {int (* set_fulltext ) (int **,void*) ;int (* apply_textdelta ) (scalar_t__*,void**,void*) ;} ;
typedef TYPE_1__ svn_repos_parse_fns3_t ;
typedef scalar_t__ svn_filesize_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_STREAM_UNEXPECTED_EOF ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int * stream_ran_dry () ;
 int stub1 (scalar_t__*,void**,void*) ;
 int stub2 (int **,void*) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_stream_close (int *) ;
 int svn_stream_read_full (int *,char*,scalar_t__*) ;
 int svn_stream_write (int *,char*,scalar_t__*) ;
 int * svn_txdelta_parse_svndiff (scalar_t__,void*,int ,int *) ;

__attribute__((used)) static svn_error_t *
parse_text_block(svn_stream_t *stream,
                 svn_filesize_t content_length,
                 svn_boolean_t is_delta,
                 const svn_repos_parse_fns3_t *parse_fns,
                 void *record_baton,
                 char *buffer,
                 apr_size_t buflen,
                 apr_pool_t *pool)
{
  svn_stream_t *text_stream = ((void*)0);
  apr_size_t num_to_read, rlen, wlen;

  if (is_delta)
    {
      svn_txdelta_window_handler_t wh;
      void *whb;

      SVN_ERR(parse_fns->apply_textdelta(&wh, &whb, record_baton));
      if (wh)
        text_stream = svn_txdelta_parse_svndiff(wh, whb, TRUE, pool);
    }
  else
    {

      SVN_ERR(parse_fns->set_fulltext(&text_stream, record_baton));
    }



  while (content_length)
    {
      if (content_length >= (svn_filesize_t)buflen)
        rlen = buflen;
      else
        rlen = (apr_size_t) content_length;

      num_to_read = rlen;
      SVN_ERR(svn_stream_read_full(stream, buffer, &rlen));
      content_length -= rlen;
      if (rlen != num_to_read)
        return stream_ran_dry();

      if (text_stream)
        {

          wlen = rlen;
          SVN_ERR(svn_stream_write(text_stream, buffer, &wlen));
          if (wlen != rlen)
            {

              return svn_error_create(SVN_ERR_STREAM_UNEXPECTED_EOF, ((void*)0),
                                      _("Unexpected EOF writing contents"));
            }
        }
    }


  if (text_stream)
    SVN_ERR(svn_stream_close(text_stream));

  return SVN_NO_ERROR;
}
