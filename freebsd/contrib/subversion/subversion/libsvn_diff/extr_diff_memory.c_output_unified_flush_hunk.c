
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_6__ {TYPE_2__* hunk; scalar_t__* hunk_start; scalar_t__* hunk_length; int output_stream; int pool; int header_encoding; scalar_t__ context_size; } ;
typedef TYPE_1__ output_baton_t ;
typedef int apr_size_t ;
typedef scalar_t__ apr_off_t ;
struct TYPE_7__ {int data; int len; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int output_unified_token_range (TYPE_1__*,int ,int ,scalar_t__) ;
 int svn_diff__unified_write_hunk_header (int ,int ,char const*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int *,int ) ;
 int svn_pool_clear (int ) ;
 int svn_stream_write (int ,int ,int *) ;
 scalar_t__ svn_stringbuf_isempty (TYPE_2__*) ;
 int svn_stringbuf_setempty (TYPE_2__*) ;
 int unified_output_context ;

__attribute__((used)) static svn_error_t *
output_unified_flush_hunk(output_baton_t *baton,
                          const char *hunk_delimiter)
{
  apr_off_t target_token;
  apr_size_t hunk_len;
  apr_off_t old_start;
  apr_off_t new_start;

  if (svn_stringbuf_isempty(baton->hunk))
    return SVN_NO_ERROR;

  svn_pool_clear(baton->pool);


  target_token = baton->hunk_start[0] + baton->hunk_length[0]
                 + baton->context_size;
  SVN_ERR(output_unified_token_range(baton, 0 ,
                                     unified_output_context,
                                     target_token));
  if (hunk_delimiter == ((void*)0))
    hunk_delimiter = "@@";

  old_start = baton->hunk_start[0];
  new_start = baton->hunk_start[1];



  if (baton->hunk_length[0])
    old_start++;
  if (baton->hunk_length[1])
    new_start++;


  SVN_ERR(svn_diff__unified_write_hunk_header(
            baton->output_stream, baton->header_encoding, hunk_delimiter,
            old_start, baton->hunk_length[0],
            new_start, baton->hunk_length[1],
            ((void*)0) ,
            baton->pool));

  hunk_len = baton->hunk->len;
  SVN_ERR(svn_stream_write(baton->output_stream,
                           baton->hunk->data, &hunk_len));


  baton->hunk_length[0] = 0;
  baton->hunk_length[1] = 0;
  baton->hunk_start[0] = 0;
  baton->hunk_start[1] = 0;
  svn_stringbuf_setempty(baton->hunk);

  return SVN_NO_ERROR;
}
