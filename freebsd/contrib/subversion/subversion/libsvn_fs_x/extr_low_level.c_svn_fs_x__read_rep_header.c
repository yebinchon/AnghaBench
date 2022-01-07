
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* data; scalar_t__ len; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_stream_t ;
struct TYPE_7__ {scalar_t__ base_length; scalar_t__ base_item_index; int base_revision; int type; scalar_t__ header_size; } ;
typedef TYPE_2__ svn_fs_x__rep_header_t ;
typedef scalar_t__ svn_filesize_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_off_t ;
typedef scalar_t__ apr_int64_t ;


 int FALSE ;
 int REP_DELTA ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_CORRUPT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 TYPE_2__* apr_pcalloc (int *,int) ;
 int parse_revnum (int *,char const**) ;
 scalar_t__ strcmp (char*,int ) ;
 int svn_cstring_atoi64 (scalar_t__*,char*) ;
 char* svn_cstring_tokenize (char*,char**) ;
 int * svn_error_createf (int ,int *,int ) ;
 int svn_fs_x__rep_delta ;
 int svn_fs_x__rep_self_delta ;
 int svn_stream_readline (int *,TYPE_1__**,char*,int *,int *) ;

svn_error_t *
svn_fs_x__read_rep_header(svn_fs_x__rep_header_t **header,
                          svn_stream_t *stream,
                          apr_pool_t *result_pool,
                          apr_pool_t *scratch_pool)
{
  svn_stringbuf_t *buffer;
  char *str, *last_str;
  apr_int64_t val;
  svn_boolean_t eol = FALSE;

  SVN_ERR(svn_stream_readline(stream, &buffer, "\n", &eol, scratch_pool));

  *header = apr_pcalloc(result_pool, sizeof(**header));
  (*header)->header_size = buffer->len + 1;
  if (strcmp(buffer->data, REP_DELTA) == 0)
    {

      (*header)->type = svn_fs_x__rep_self_delta;
      return SVN_NO_ERROR;
    }

  (*header)->type = svn_fs_x__rep_delta;


  last_str = buffer->data;
  str = svn_cstring_tokenize(" ", &last_str);
  if (! str || (strcmp(str, REP_DELTA) != 0))
    goto error;

  SVN_ERR(parse_revnum(&(*header)->base_revision, (const char **)&last_str));

  str = svn_cstring_tokenize(" ", &last_str);
  if (! str)
    goto error;
  SVN_ERR(svn_cstring_atoi64(&val, str));
  (*header)->base_item_index = (apr_off_t)val;

  str = svn_cstring_tokenize(" ", &last_str);
  if (! str)
    goto error;
  SVN_ERR(svn_cstring_atoi64(&val, str));
  (*header)->base_length = (svn_filesize_t)val;

  return SVN_NO_ERROR;

 error:
  return svn_error_createf(SVN_ERR_FS_CORRUPT, ((void*)0),
                           _("Malformed representation header"));
}
