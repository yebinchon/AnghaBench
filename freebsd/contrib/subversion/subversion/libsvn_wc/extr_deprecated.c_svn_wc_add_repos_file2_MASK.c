#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc_adm_access_t ;
typedef  int /*<<< orphan*/  svn_subst_eol_style_t ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_EOL_STYLE ; 
 int /*<<< orphan*/  SVN_PROP_KEYWORDS ; 
 int /*<<< orphan*/  SVN_PROP_SPECIAL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const**,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC11(const char *dst_path,
                       svn_wc_adm_access_t *adm_access,
                       const char *new_text_base_path,
                       const char *new_text_path,
                       apr_hash_t *new_base_props,
                       apr_hash_t *new_props,
                       const char *copyfrom_url,
                       svn_revnum_t copyfrom_rev,
                       apr_pool_t *pool)
{
  svn_stream_t *new_base_contents;
  svn_stream_t *new_contents = NULL;

  FUNC0(FUNC5(&new_base_contents, new_text_base_path,
                                   pool, pool));

  if (new_text_path)
    {
      /* NOTE: the specified path may *not* be under version control.
         It is most likely sitting in .svn/tmp/. Thus, we cannot use the
         typical WC functions to access "special", "keywords" or "EOL"
         information. We need to look at the properties given to us. */

      /* If the new file is special, then we can simply open the given
         contents since it is already in normal form. */
      if (FUNC3(new_props, SVN_PROP_SPECIAL) != NULL)
        {
          FUNC0(FUNC5(&new_contents, new_text_path,
                                           pool, pool));
        }
      else
        {
          /* The new text contents need to be detrans'd into normal form. */
          svn_subst_eol_style_t eol_style;
          const char *eol_str;
          apr_hash_t *keywords = NULL;
          svn_string_t *list;

          list = FUNC3(new_props, SVN_PROP_KEYWORDS);
          if (list != NULL)
            {
              /* Since we are detranslating, all of the keyword values
                 can be "". */
              FUNC0(FUNC6(&keywords,
                                                list->data,
                                                "", "", 0, "",
                                                pool));
              if (FUNC1(keywords) == 0)
                keywords = NULL;
            }

          FUNC7(&eol_style, &eol_str,
                                         FUNC3(new_props,
                                                       SVN_PROP_EOL_STYLE));

          if (FUNC9(eol_style, eol_str, keywords,
                                             FALSE, FALSE))
            {
              FUNC0(FUNC8(&new_contents,
                                                    new_text_path,
                                                    eol_style, eol_str,
                                                    FALSE,
                                                    keywords,
                                                    FALSE,
                                                    pool));
            }
          else
            {
              FUNC0(FUNC5(&new_contents, new_text_path,
                                               pool, pool));
            }
        }
    }

  FUNC0(FUNC10(dst_path, adm_access,
                                 new_base_contents, new_contents,
                                 new_base_props, new_props,
                                 copyfrom_url, copyfrom_rev,
                                 NULL, NULL, NULL, NULL,
                                 pool));

  /* The API contract states that the text files will be removed upon
     successful completion. add_repos_file3() does not remove the files
     since it only has streams on them. Toss 'em now. */
  FUNC2(FUNC4(new_text_base_path, pool));
  if (new_text_path)
    FUNC2(FUNC4(new_text_path, pool));

  return SVN_NO_ERROR;
}