#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int current_line; scalar_t__ eol_style; char* eol_str; int /*<<< orphan*/  write_baton; int /*<<< orphan*/  (* write ) (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *) ;int /*<<< orphan*/  eof; } ;
typedef  TYPE_1__ target_content_t ;
struct TYPE_14__ {int len; char const* data; } ;
typedef  TYPE_2__ svn_stringbuf_t ;
typedef  int svn_linenum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_15__ {scalar_t__ kind_on_disk; void* has_text_changes; void* has_prop_changes; } ;
typedef  TYPE_3__ patch_target_t ;
struct TYPE_16__ {int match_fuzz; int /*<<< orphan*/  hunk; void* rejected; scalar_t__ matched_line; } ;
typedef  TYPE_4__ hunk_info_t ;
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_1__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_2__**,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ svn_node_file ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ svn_subst_eol_style_none ; 

__attribute__((used)) static svn_error_t *
FUNC14(patch_target_t *target, target_content_t *content,
           hunk_info_t *hi, const char *prop_name, apr_pool_t *pool)
{
  svn_linenum_t lines_read;
  svn_boolean_t eof;
  apr_pool_t *iterpool;
  svn_linenum_t fuzz = hi->match_fuzz;

  /* ### Is there a cleaner way to describe if we have an existing target?
   */
  if (target->kind_on_disk == svn_node_file || prop_name)
    {
      svn_linenum_t line;

      /* Move forward to the hunk's line, copying data as we go.
       * Also copy leading lines of context which matched with fuzz.
       * The target has changed on the fuzzy-matched lines,
       * so we should retain the target's version of those lines. */
      FUNC0(FUNC1(content, hi->matched_line + fuzz,
                                   pool));

      /* Skip the target's version of the hunk.
       * Don't skip trailing lines which matched with fuzz. */
      line = content->current_line +
             FUNC8(hi->hunk) - (2 * fuzz);
      FUNC0(FUNC3(content, line, pool));
      if (content->current_line != line && ! content->eof)
        {
          /* Seek failed, reject this hunk. */
          hi->rejected = TRUE;
          FUNC0(FUNC2(target, content, hi->hunk, prop_name, pool));
          return SVN_NO_ERROR;
        }
    }

  /* Write the hunk's version to the patched result.
   * Don't write the lines which matched with fuzz. */
  lines_read = 0;
  FUNC10(hi->hunk);
  iterpool = FUNC12(pool);
  do
    {
      svn_stringbuf_t *hunk_line;
      const char *eol_str;

      FUNC11(iterpool);

      FUNC0(FUNC9(hi->hunk, &hunk_line,
                                                   &eol_str, &eof,
                                                   iterpool, iterpool));
      lines_read++;
      if (lines_read > fuzz &&
          lines_read <= FUNC7(hi->hunk) - fuzz)
        {
          apr_size_t len;

          if (hunk_line->len >= 1)
            {
              len = hunk_line->len;
              FUNC0(content->write(content->write_baton,
                                     hunk_line->data, len, iterpool));
            }

          if (eol_str)
            {
              /* Use the EOL as it was read from the patch file,
               * unless the target's EOL style is set by svn:eol-style */
              if (content->eol_style != svn_subst_eol_style_none)
                eol_str = content->eol_str;

              len = FUNC4(eol_str);
              FUNC0(content->write(content->write_baton,
                                     eol_str, len, iterpool));
            }
        }
    }
  while (! eof);
  FUNC13(iterpool);

  if (prop_name)
    target->has_prop_changes = TRUE;
  else
    target->has_text_changes = TRUE;

  return SVN_NO_ERROR;
}