
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ current_line; scalar_t__ eof; int keywords; } ;
typedef TYPE_1__ target_content_t ;
struct TYPE_9__ {scalar_t__ len; int data; } ;
typedef TYPE_2__ svn_stringbuf_t ;
typedef scalar_t__ svn_linenum_t ;
typedef int svn_error_t ;
typedef int svn_diff_hunk_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int apr_collapse_spaces (char*,char*) ;
 char* apr_pstrdup (int *,char const*) ;
 int readline (TYPE_1__*,char const**,int *,int *) ;
 int seek_to_line (TYPE_1__*,scalar_t__,int *) ;
 int strcmp (char const*,char const*) ;
 scalar_t__ svn_diff_hunk__get_fuzz_penalty (int *) ;
 scalar_t__ svn_diff_hunk_get_leading_context (int *) ;
 scalar_t__ svn_diff_hunk_get_modified_length (int *) ;
 scalar_t__ svn_diff_hunk_get_original_length (int *) ;
 scalar_t__ svn_diff_hunk_get_trailing_context (int *) ;
 int svn_diff_hunk_readline_modified_text (int *,TYPE_2__**,int *,int*,int *,int *) ;
 int svn_diff_hunk_readline_original_text (int *,TYPE_2__**,int *,int*,int *,int *) ;
 int svn_diff_hunk_reset_modified_text (int *) ;
 int svn_diff_hunk_reset_original_text (int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_subst_translate_cstring2 (int ,char const**,int *,int,int ,int,int *) ;

__attribute__((used)) static svn_error_t *
match_hunk(svn_boolean_t *matched, target_content_t *content,
           svn_diff_hunk_t *hunk, svn_linenum_t fuzz,
           svn_boolean_t ignore_whitespace,
           svn_boolean_t match_modified, apr_pool_t *pool)
{
  svn_stringbuf_t *hunk_line;
  const char *target_line;
  svn_linenum_t lines_read;
  svn_linenum_t saved_line;
  svn_boolean_t hunk_eof;
  svn_boolean_t lines_matched;
  apr_pool_t *iterpool;
  svn_linenum_t hunk_length;
  svn_linenum_t leading_context;
  svn_linenum_t trailing_context;
  svn_linenum_t fuzz_penalty;

  *matched = FALSE;

  if (content->eof)
    return SVN_NO_ERROR;

  fuzz_penalty = svn_diff_hunk__get_fuzz_penalty(hunk);

  if (fuzz_penalty > fuzz)
    return SVN_NO_ERROR;
  else
    fuzz -= fuzz_penalty;

  saved_line = content->current_line;
  lines_read = 0;
  lines_matched = FALSE;
  leading_context = svn_diff_hunk_get_leading_context(hunk);
  trailing_context = svn_diff_hunk_get_trailing_context(hunk);
  if (match_modified)
    {
      svn_diff_hunk_reset_modified_text(hunk);
      hunk_length = svn_diff_hunk_get_modified_length(hunk);
    }
  else
    {
      svn_diff_hunk_reset_original_text(hunk);
      hunk_length = svn_diff_hunk_get_original_length(hunk);
    }
  iterpool = svn_pool_create(pool);
  do
    {
      const char *hunk_line_translated;

      svn_pool_clear(iterpool);

      if (match_modified)
        SVN_ERR(svn_diff_hunk_readline_modified_text(hunk, &hunk_line,
                                                     ((void*)0), &hunk_eof,
                                                     iterpool, iterpool));
      else
        SVN_ERR(svn_diff_hunk_readline_original_text(hunk, &hunk_line,
                                                     ((void*)0), &hunk_eof,
                                                     iterpool, iterpool));


      SVN_ERR(svn_subst_translate_cstring2(hunk_line->data,
                                           &hunk_line_translated,
                                           ((void*)0), FALSE,
                                           content->keywords, FALSE,
                                           iterpool));
      SVN_ERR(readline(content, &target_line, iterpool, iterpool));

      lines_read++;



      if ((hunk_eof && hunk_line->len == 0) ||
          (content->eof && *target_line == 0))
        break;


      if ((lines_read <= fuzz && leading_context > fuzz) ||
          (lines_read > hunk_length - fuzz && trailing_context > fuzz))
        lines_matched = TRUE;
      else
        {
          if (ignore_whitespace)
            {
              char *hunk_line_trimmed;
              char *target_line_trimmed;

              hunk_line_trimmed = apr_pstrdup(iterpool, hunk_line_translated);
              target_line_trimmed = apr_pstrdup(iterpool, target_line);
              apr_collapse_spaces(hunk_line_trimmed, hunk_line_trimmed);
              apr_collapse_spaces(target_line_trimmed, target_line_trimmed);
              lines_matched = ! strcmp(hunk_line_trimmed, target_line_trimmed);
            }
          else
            lines_matched = ! strcmp(hunk_line_translated, target_line);
        }
    }
  while (lines_matched);

  *matched = lines_matched && hunk_eof && hunk_line->len == 0;
  SVN_ERR(seek_to_line(content, saved_line, iterpool));
  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}
