
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct recover_read_from_file_baton {scalar_t__ remaining; int stream; } ;
typedef scalar_t__ apr_size_t ;
typedef scalar_t__ apr_int64_t ;


 int * SVN_NO_ERROR ;
 int * svn_stream_read_full (int ,char*,scalar_t__*) ;

__attribute__((used)) static svn_error_t *
read_handler_recover(void *baton, char *buffer, apr_size_t *len)
{
  struct recover_read_from_file_baton *b = baton;
  apr_size_t bytes_to_read = *len;

  if (b->remaining == 0)
    {

      *len = 0;
      return SVN_NO_ERROR;
    }

  if ((apr_int64_t)bytes_to_read > (apr_int64_t)b->remaining)
    bytes_to_read = (apr_size_t)b->remaining;
  b->remaining -= bytes_to_read;

  return svn_stream_read_full(b->stream, buffer, &bytes_to_read);
}
