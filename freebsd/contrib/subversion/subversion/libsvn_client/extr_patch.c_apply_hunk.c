
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int current_line; scalar_t__ eol_style; char* eol_str; int write_baton; int (* write ) (int ,char const*,int,int *) ;int eof; } ;
typedef TYPE_1__ target_content_t ;
struct TYPE_14__ {int len; char const* data; } ;
typedef TYPE_2__ svn_stringbuf_t ;
typedef int svn_linenum_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_15__ {scalar_t__ kind_on_disk; void* has_text_changes; void* has_prop_changes; } ;
typedef TYPE_3__ patch_target_t ;
struct TYPE_16__ {int match_fuzz; int hunk; void* rejected; scalar_t__ matched_line; } ;
typedef TYPE_4__ hunk_info_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 void* TRUE ;
 int copy_lines_to_target (TYPE_1__*,scalar_t__,int *) ;
 int reject_hunk (TYPE_3__*,TYPE_1__*,int ,char const*,int *) ;
 int seek_to_line (TYPE_1__*,int,int *) ;
 int strlen (char const*) ;
 int stub1 (int ,char const*,int,int *) ;
 int stub2 (int ,char const*,int,int *) ;
 int svn_diff_hunk_get_modified_length (int ) ;
 int svn_diff_hunk_get_original_length (int ) ;
 int svn_diff_hunk_readline_modified_text (int ,TYPE_2__**,char const**,int *,int *,int *) ;
 int svn_diff_hunk_reset_modified_text (int ) ;
 scalar_t__ svn_node_file ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 scalar_t__ svn_subst_eol_style_none ;

__attribute__((used)) static svn_error_t *
apply_hunk(patch_target_t *target, target_content_t *content,
           hunk_info_t *hi, const char *prop_name, apr_pool_t *pool)
{
  svn_linenum_t lines_read;
  svn_boolean_t eof;
  apr_pool_t *iterpool;
  svn_linenum_t fuzz = hi->match_fuzz;



  if (target->kind_on_disk == svn_node_file || prop_name)
    {
      svn_linenum_t line;





      SVN_ERR(copy_lines_to_target(content, hi->matched_line + fuzz,
                                   pool));



      line = content->current_line +
             svn_diff_hunk_get_original_length(hi->hunk) - (2 * fuzz);
      SVN_ERR(seek_to_line(content, line, pool));
      if (content->current_line != line && ! content->eof)
        {

          hi->rejected = TRUE;
          SVN_ERR(reject_hunk(target, content, hi->hunk, prop_name, pool));
          return SVN_NO_ERROR;
        }
    }



  lines_read = 0;
  svn_diff_hunk_reset_modified_text(hi->hunk);
  iterpool = svn_pool_create(pool);
  do
    {
      svn_stringbuf_t *hunk_line;
      const char *eol_str;

      svn_pool_clear(iterpool);

      SVN_ERR(svn_diff_hunk_readline_modified_text(hi->hunk, &hunk_line,
                                                   &eol_str, &eof,
                                                   iterpool, iterpool));
      lines_read++;
      if (lines_read > fuzz &&
          lines_read <= svn_diff_hunk_get_modified_length(hi->hunk) - fuzz)
        {
          apr_size_t len;

          if (hunk_line->len >= 1)
            {
              len = hunk_line->len;
              SVN_ERR(content->write(content->write_baton,
                                     hunk_line->data, len, iterpool));
            }

          if (eol_str)
            {


              if (content->eol_style != svn_subst_eol_style_none)
                eol_str = content->eol_str;

              len = strlen(eol_str);
              SVN_ERR(content->write(content->write_baton,
                                     eol_str, len, iterpool));
            }
        }
    }
  while (! eof);
  svn_pool_destroy(iterpool);

  if (prop_name)
    target->has_prop_changes = TRUE;
  else
    target->has_text_changes = TRUE;

  return SVN_NO_ERROR;
}
