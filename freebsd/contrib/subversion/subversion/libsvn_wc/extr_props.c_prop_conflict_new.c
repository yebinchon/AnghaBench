
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_3__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_1__ ;


struct TYPE_29__ {int len; } ;
typedef TYPE_1__ svn_stringbuf_t ;
struct TYPE_30__ {int len; int data; } ;
typedef TYPE_2__ svn_string_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int svn_diff_t ;
struct TYPE_31__ {void* show_c_function; void* ignore_eol_style; int ignore_space; } ;
typedef TYPE_3__ svn_diff_file_options_t ;
typedef int svn_diff_conflict_display_style_t ;
typedef int svn_cancel_func_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 void* FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* _ (char*) ;
 TYPE_1__* generate_conflict_message (char const*,TYPE_2__ const*,TYPE_2__ const*,TYPE_2__ const*,TYPE_2__ const*,int *) ;
 int svn_diff_conflict_display_modified_original_latest ;
 scalar_t__ svn_diff_contains_conflicts (int *) ;
 int svn_diff_file_ignore_space_none ;
 TYPE_3__* svn_diff_file_options_create (int *) ;
 int svn_diff_mem_string_diff3 (int **,TYPE_2__ const*,TYPE_2__ const*,TYPE_2__ const*,TYPE_3__*,int *) ;
 int svn_diff_mem_string_output_merge3 (int *,int *,TYPE_2__*,TYPE_2__*,TYPE_2__*,char const*,char const*,char const*,char const*,int ,int ,void*,int *) ;
 scalar_t__ svn_io_is_binary_data (int ,int ) ;
 int svn_stream_close (int *) ;
 int * svn_stream_from_stringbuf (TYPE_1__*,int *) ;
 int svn_stream_skip (int *,int ) ;
 TYPE_2__* svn_string_create (int ,int *) ;
 TYPE_2__* svn_string_create_empty (int *) ;
 TYPE_2__* svn_string_create_from_buf (TYPE_1__*,int *) ;
 int svn_stringbuf_appendbytes (TYPE_1__*,int ,int ) ;
 int svn_stringbuf_appendcstr (TYPE_1__*,char*) ;
 int svn_utf_cstring_from_utf8_fuzzy (int ,int *) ;

__attribute__((used)) static svn_error_t *
prop_conflict_new(const svn_string_t **conflict_desc,
                  const char *propname,
                  const svn_string_t *original,
                  const svn_string_t *mine,
                  const svn_string_t *incoming,
                  const svn_string_t *incoming_base,
                  svn_cancel_func_t cancel_func,
                  void *cancel_baton,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  svn_diff_t *diff;
  svn_diff_file_options_t *diff_opts;
  svn_stringbuf_t *buf;
  svn_boolean_t incoming_base_is_binary;
  svn_boolean_t mine_is_binary;
  svn_boolean_t incoming_is_binary;

  buf = generate_conflict_message(propname, original, mine, incoming,
                                  incoming_base, scratch_pool);



  if (mine == ((void*)0))
    mine = svn_string_create_empty(scratch_pool);
  if (incoming == ((void*)0))
    incoming = svn_string_create_empty(scratch_pool);
  if (incoming_base == ((void*)0))
    incoming_base = svn_string_create_empty(scratch_pool);
  incoming_base_is_binary = svn_io_is_binary_data(incoming_base->data,
                                                  incoming_base->len);
  mine_is_binary = svn_io_is_binary_data(mine->data, mine->len);
  incoming_is_binary = svn_io_is_binary_data(incoming->data, incoming->len);

  if (!(incoming_base_is_binary || mine_is_binary || incoming_is_binary))
    {
      diff_opts = svn_diff_file_options_create(scratch_pool);
      diff_opts->ignore_space = svn_diff_file_ignore_space_none;
      diff_opts->ignore_eol_style = FALSE;
      diff_opts->show_c_function = FALSE;


      SVN_ERR(svn_diff_mem_string_diff3(&diff, incoming_base, mine, incoming,
                                        diff_opts, scratch_pool));
      if (svn_diff_contains_conflicts(diff))
        {
          svn_stream_t *stream;
          svn_diff_conflict_display_style_t style;
          const char *mine_marker = _("<<<<<<< (local property value)");
          const char *incoming_marker = _(">>>>>>> (incoming 'changed to' value)");
          const char *incoming_base_marker = _("||||||| (incoming 'changed from' value)");
          const char *separator = "=======";
          svn_string_t *incoming_base_ascii =
            svn_string_create(svn_utf_cstring_from_utf8_fuzzy(incoming_base->data,
                                                              scratch_pool),
                              scratch_pool);
          svn_string_t *mine_ascii =
            svn_string_create(svn_utf_cstring_from_utf8_fuzzy(mine->data,
                                                              scratch_pool),
                              scratch_pool);
          svn_string_t *incoming_ascii =
            svn_string_create(svn_utf_cstring_from_utf8_fuzzy(incoming->data,
                                                              scratch_pool),
                              scratch_pool);

          style = svn_diff_conflict_display_modified_original_latest;
          stream = svn_stream_from_stringbuf(buf, scratch_pool);
          SVN_ERR(svn_stream_skip(stream, buf->len));
          SVN_ERR(svn_diff_mem_string_output_merge3(stream, diff,
                                                    incoming_base_ascii,
                                                    mine_ascii,
                                                    incoming_ascii,
                                                    incoming_base_marker, mine_marker,
                                                    incoming_marker, separator,
                                                    style,
                                                    cancel_func, cancel_baton,
                                                    scratch_pool));
          SVN_ERR(svn_stream_close(stream));

          *conflict_desc = svn_string_create_from_buf(buf, result_pool);
          return SVN_NO_ERROR;
        }
    }


  if (mine->len > 0)
    {
      svn_stringbuf_appendcstr(buf, _("Local property value:\n"));
      if (mine_is_binary)
        svn_stringbuf_appendcstr(buf, _("Cannot display: property value is "
                                        "binary data\n"));
      else
        svn_stringbuf_appendbytes(buf, mine->data, mine->len);
      svn_stringbuf_appendcstr(buf, "\n");
    }

  if (incoming->len > 0)
    {
      svn_stringbuf_appendcstr(buf, _("Incoming property value:\n"));
      if (incoming_is_binary)
        svn_stringbuf_appendcstr(buf, _("Cannot display: property value is "
                                        "binary data\n"));
      else
        svn_stringbuf_appendbytes(buf, incoming->data, incoming->len);
      svn_stringbuf_appendcstr(buf, "\n");
    }

  *conflict_desc = svn_string_create_from_buf(buf, result_pool);
  return SVN_NO_ERROR;
}
