
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ eof; int keywords; int current_line; } ;
typedef TYPE_1__ target_content_t ;
struct TYPE_8__ {char const* data; } ;
typedef TYPE_2__ svn_stringbuf_t ;
typedef int svn_linenum_t ;
typedef int svn_error_t ;
typedef int svn_diff_hunk_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int readline (TYPE_1__*,char const**,int *,int *) ;
 int seek_to_line (TYPE_1__*,int ,int *) ;
 int strcmp (char const*,char const*) ;
 int svn_diff_hunk_readline_modified_text (int *,TYPE_2__**,int *,scalar_t__*,int *,int *) ;
 int svn_diff_hunk_reset_modified_text (int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_subst_translate_cstring2 (char const*,char const**,int *,scalar_t__,int ,scalar_t__,int *) ;

__attribute__((used)) static svn_error_t *
match_existing_target(svn_boolean_t *match,
                      target_content_t *content,
                      svn_diff_hunk_t *hunk,
                      apr_pool_t *scratch_pool)
{
  svn_boolean_t lines_matched;
  apr_pool_t *iterpool;
  svn_boolean_t hunk_eof;
  svn_linenum_t saved_line;

  svn_diff_hunk_reset_modified_text(hunk);

  saved_line = content->current_line;

  iterpool = svn_pool_create(scratch_pool);
  do
    {
      const char *line;
      svn_stringbuf_t *hunk_line;
      const char *line_translated;
      const char *hunk_line_translated;

      svn_pool_clear(iterpool);

      SVN_ERR(readline(content, &line, iterpool, iterpool));
      SVN_ERR(svn_diff_hunk_readline_modified_text(hunk, &hunk_line,
                                                   ((void*)0), &hunk_eof,
                                                   iterpool, iterpool));

      SVN_ERR(svn_subst_translate_cstring2(line, &line_translated,
                                           ((void*)0), FALSE,
                                           content->keywords,
                                           FALSE, iterpool));
      SVN_ERR(svn_subst_translate_cstring2(hunk_line->data,
                                           &hunk_line_translated,
                                           ((void*)0), FALSE,
                                           content->keywords,
                                           FALSE, iterpool));
      lines_matched = ! strcmp(line_translated, hunk_line_translated);
      if (content->eof != hunk_eof)
        {
          svn_pool_destroy(iterpool);
          *match = FALSE;
          return SVN_NO_ERROR;
        }
    }
  while (lines_matched && ! content->eof && ! hunk_eof);
  svn_pool_destroy(iterpool);

  *match = (lines_matched && content->eof == hunk_eof);
  SVN_ERR(seek_to_line(content, saved_line, scratch_pool));

  return SVN_NO_ERROR;
}
