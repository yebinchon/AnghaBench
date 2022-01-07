
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ len; char* data; } ;
typedef TYPE_4__ svn_stringbuf_t ;
struct TYPE_19__ {scalar_t__ reverse; } ;
typedef TYPE_5__ svn_patch_t ;
typedef scalar_t__ svn_linenum_t ;
typedef int svn_error_t ;
typedef int svn_diff_operation_kind_t ;
struct TYPE_17__ {scalar_t__ end; scalar_t__ current; scalar_t__ start; } ;
struct TYPE_16__ {scalar_t__ end; scalar_t__ current; scalar_t__ start; } ;
struct TYPE_15__ {scalar_t__ end; scalar_t__ current; scalar_t__ start; } ;
struct TYPE_20__ {scalar_t__ original_length; scalar_t__ original_fuzz; scalar_t__ modified_length; scalar_t__ modified_fuzz; void* modified_no_final_eol; void* original_no_final_eol; TYPE_3__ modified_text_range; TYPE_2__ original_text_range; TYPE_1__ diff_text_range; scalar_t__ trailing_context; scalar_t__ leading_context; int * apr_file; TYPE_5__* patch; } ;
typedef TYPE_6__ svn_diff_hunk_t ;
typedef void* svn_boolean_t ;
typedef int eolbuf ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_off_t ;
typedef int apr_file_t ;


 scalar_t__ APR_EOF ;
 int APR_SET ;
 int APR_SIZE_MAX ;
 void* FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_MERGEINFO ;
 void* TRUE ;
 scalar_t__ apr_file_eof (int *) ;
 TYPE_6__* apr_pcalloc (int *,int) ;
 void* parse_hunk_header (char const*,TYPE_6__*,char const* const,int *) ;
 int parse_mergeinfo (void**,TYPE_4__*,TYPE_6__*,TYPE_5__*,int *,int *) ;
 int parse_prop_name (char const**,char const*,char*,int *) ;
 scalar_t__ starts_with (char const*,char const* const) ;
 scalar_t__ strcmp (char const*,int ) ;
 int svn_diff_op_added ;
 int svn_diff_op_deleted ;
 int svn_diff_op_modified ;
 int svn_diff_op_unchanged ;
 int svn_io_file_get_offset (scalar_t__*,int *,int *) ;
 int svn_io_file_read_full2 (int *,char*,int,int*,void**,int *) ;
 int svn_io_file_readline (int *,TYPE_4__**,int *,void**,int ,int *,int *) ;
 int svn_io_file_seek (int *,int ,scalar_t__*,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
parse_next_hunk(svn_diff_hunk_t **hunk,
                svn_boolean_t *is_property,
                const char **prop_name,
                svn_diff_operation_kind_t *prop_operation,
                svn_patch_t *patch,
                apr_file_t *apr_file,
                svn_boolean_t ignore_whitespace,
                apr_pool_t *result_pool,
                apr_pool_t *scratch_pool)
{
  static const char * const minus = "--- ";
  static const char * const text_atat = "@@";
  static const char * const prop_atat = "##";
  svn_stringbuf_t *line;
  svn_boolean_t eof, in_hunk, hunk_seen;
  apr_off_t pos, last_line;
  apr_off_t start, end;
  apr_off_t original_end;
  apr_off_t modified_end;
  svn_boolean_t original_no_final_eol = FALSE;
  svn_boolean_t modified_no_final_eol = FALSE;
  svn_linenum_t original_lines;
  svn_linenum_t modified_lines;
  svn_linenum_t leading_context;
  svn_linenum_t trailing_context;
  svn_boolean_t changed_line_seen;
  enum {
    noise_line,
    original_line,
    modified_line,
    context_line
  } last_line_type;
  apr_pool_t *iterpool;

  *prop_operation = svn_diff_op_unchanged;


  *prop_name = ((void*)0);
  *is_property = FALSE;

  if (apr_file_eof(apr_file) == APR_EOF)
    {

      *hunk = ((void*)0);
      return SVN_NO_ERROR;
    }

  in_hunk = FALSE;
  hunk_seen = FALSE;
  leading_context = 0;
  trailing_context = 0;
  changed_line_seen = FALSE;
  original_end = 0;
  modified_end = 0;
  *hunk = apr_pcalloc(result_pool, sizeof(**hunk));


  SVN_ERR(svn_io_file_get_offset(&pos, apr_file, scratch_pool));


  last_line_type = noise_line;

  iterpool = svn_pool_create(scratch_pool);
  do
    {

      svn_pool_clear(iterpool);


      last_line = pos;
      SVN_ERR(svn_io_file_readline(apr_file, &line, ((void*)0), &eof, APR_SIZE_MAX,
                                   iterpool, iterpool));


      SVN_ERR(svn_io_file_get_offset(&pos, apr_file, iterpool));



      if (line->data[0] == '\\')
        {
          if (in_hunk)
            {
              char eolbuf[2];
              apr_size_t len;
              apr_off_t off;
              apr_off_t hunk_text_end;




              off = last_line - 2;
              SVN_ERR(svn_io_file_seek(apr_file, APR_SET, &off, iterpool));
              len = sizeof(eolbuf);
              SVN_ERR(svn_io_file_read_full2(apr_file, eolbuf, len, &len,
                                             &eof, iterpool));
              if (eolbuf[0] == '\r' && eolbuf[1] == '\n')
                hunk_text_end = last_line - 2;
              else if (eolbuf[1] == '\n' || eolbuf[1] == '\r')
                hunk_text_end = last_line - 1;
              else
                hunk_text_end = last_line;

              if (last_line_type == original_line && original_end == 0)
                original_end = hunk_text_end;
              else if (last_line_type == modified_line && modified_end == 0)
                modified_end = hunk_text_end;
              else if (last_line_type == context_line)
                {
                  if (original_end == 0)
                    original_end = hunk_text_end;
                  if (modified_end == 0)
                    modified_end = hunk_text_end;
                }

              SVN_ERR(svn_io_file_seek(apr_file, APR_SET, &pos, iterpool));

              if (last_line_type != modified_line)
                original_no_final_eol = TRUE;
              if (last_line_type != original_line)
                modified_no_final_eol = TRUE;
            }

          continue;
        }

      if (in_hunk && *is_property && *prop_name &&
          strcmp(*prop_name, SVN_PROP_MERGEINFO) == 0)
        {
          svn_boolean_t found_mergeinfo;

          SVN_ERR(parse_mergeinfo(&found_mergeinfo, line, *hunk, patch,
                                  result_pool, iterpool));
          if (found_mergeinfo)
            continue;
          else
            {


              in_hunk = FALSE;
            }
        }

      if (in_hunk)
        {
          char c;
          static const char add = '+';
          static const char del = '-';

          if (! hunk_seen)
            {


              start = last_line;
            }

          c = line->data[0];
          if (c == ' '
              || ((original_lines > 0 && modified_lines > 0)
                  && (

                      (! eof && line->len == 0)

                      || (ignore_whitespace && c != del && c != add))))
            {

              hunk_seen = TRUE;
              if (original_lines > 0)
                original_lines--;
              else
                {
                  (*hunk)->original_length++;
                  (*hunk)->original_fuzz++;
                }
              if (modified_lines > 0)
                modified_lines--;
              else
                {
                  (*hunk)->modified_length++;
                  (*hunk)->modified_fuzz++;
                }
              if (changed_line_seen)
                trailing_context++;
              else
                leading_context++;
              last_line_type = context_line;
            }
          else if (c == del
                   && (original_lines > 0 || line->data[1] != del))
            {

              hunk_seen = TRUE;
              changed_line_seen = TRUE;



              if (trailing_context > 0)
                trailing_context = 0;

              if (original_lines > 0)
                original_lines--;
              else
                {
                  (*hunk)->original_length++;
                  (*hunk)->original_fuzz++;
                }
              last_line_type = original_line;
            }
          else if (c == add
                   && (modified_lines > 0 || line->data[1] != add))
            {

              hunk_seen = TRUE;
              changed_line_seen = TRUE;



              if (trailing_context > 0)
                trailing_context = 0;

              if (modified_lines > 0)
                modified_lines--;
              else
                {
                  (*hunk)->modified_length++;
                  (*hunk)->modified_fuzz++;
                }
              last_line_type = modified_line;
            }
          else
            {
              if (eof)
                {

                  end = pos;
                }
              else
                {


                  end = last_line;
                }
              if (original_end == 0)
                original_end = end;
              if (modified_end == 0)
                modified_end = end;
              break;
            }
        }
      else
        {
          if (starts_with(line->data, text_atat))
            {

              in_hunk = parse_hunk_header(line->data, *hunk, text_atat,
                                          iterpool);
              if (in_hunk)
                {
                  original_lines = (*hunk)->original_length;
                  modified_lines = (*hunk)->modified_length;
                  *is_property = FALSE;
                }
              }
          else if (starts_with(line->data, prop_atat))
            {


              in_hunk = parse_hunk_header(line->data, *hunk, prop_atat,
                                          iterpool);
              if (in_hunk)
                {
                  original_lines = (*hunk)->original_length;
                  modified_lines = (*hunk)->modified_length;
                  *is_property = TRUE;
                }
            }
          else if (starts_with(line->data, "Added: "))
            {
              SVN_ERR(parse_prop_name(prop_name, line->data, "Added: ",
                                      result_pool));
              if (*prop_name)
                *prop_operation = (patch->reverse ? svn_diff_op_deleted
                                                  : svn_diff_op_added);
            }
          else if (starts_with(line->data, "Deleted: "))
            {
              SVN_ERR(parse_prop_name(prop_name, line->data, "Deleted: ",
                                      result_pool));
              if (*prop_name)
                *prop_operation = (patch->reverse ? svn_diff_op_added
                                                  : svn_diff_op_deleted);
            }
          else if (starts_with(line->data, "Modified: "))
            {
              SVN_ERR(parse_prop_name(prop_name, line->data, "Modified: ",
                                      result_pool));
              if (*prop_name)
                *prop_operation = svn_diff_op_modified;
            }
          else if (starts_with(line->data, minus)
                   || starts_with(line->data, "diff --git "))

            break;
        }
    }


  while (! eof || line->len > 0);
  svn_pool_destroy(iterpool);

  if (! eof)



    SVN_ERR(svn_io_file_seek(apr_file, APR_SET, &last_line, scratch_pool));

  if (hunk_seen && start < end)
    {




      if (original_lines)
        {
          (*hunk)->original_length -= original_lines;
          (*hunk)->original_fuzz += original_lines;
        }
      if (modified_lines)
        {
          (*hunk)->modified_length -= modified_lines;
          (*hunk)->modified_fuzz += modified_lines;
        }

      (*hunk)->patch = patch;
      (*hunk)->apr_file = apr_file;
      (*hunk)->leading_context = leading_context;
      (*hunk)->trailing_context = trailing_context;
      (*hunk)->diff_text_range.start = start;
      (*hunk)->diff_text_range.current = start;
      (*hunk)->diff_text_range.end = end;
      (*hunk)->original_text_range.start = start;
      (*hunk)->original_text_range.current = start;
      (*hunk)->original_text_range.end = original_end;
      (*hunk)->modified_text_range.start = start;
      (*hunk)->modified_text_range.current = start;
      (*hunk)->modified_text_range.end = modified_end;
      (*hunk)->original_no_final_eol = original_no_final_eol;
      (*hunk)->modified_no_final_eol = modified_no_final_eol;
    }
  else

    *hunk = ((void*)0);

  return SVN_NO_ERROR;
}
