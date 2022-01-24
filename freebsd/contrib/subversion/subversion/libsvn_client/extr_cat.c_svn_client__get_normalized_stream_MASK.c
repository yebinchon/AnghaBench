#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ node_status; } ;
typedef  TYPE_1__ svn_wc_status3_t ;
typedef  int /*<<< orphan*/  svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_subst_eol_style_t ;
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_9__ {scalar_t__ kind; } ;
typedef  TYPE_3__ svn_opt_revision_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_time_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_CLIENT_IS_DIRECTORY ; 
 int /*<<< orphan*/  SVN_ERR_ILLEGAL_TARGET ; 
 int /*<<< orphan*/  SVN_ERR_UNVERSIONED_RESOURCE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_EOL_STYLE ; 
 int /*<<< orphan*/  SVN_PROP_KEYWORDS ; 
 int /*<<< orphan*/  SVN_PROP_SPECIAL ; 
 char const* SVN_SUBST_NATIVE_EOL_STR ; 
 scalar_t__ TRUE ; 
 char* FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_node_none ; 
 scalar_t__ svn_node_unknown ; 
 scalar_t__ svn_opt_revision_working ; 
 char* FUNC9 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,char const*,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,char const*,scalar_t__,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char const**,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__*,int /*<<< orphan*/ *,char const*,int,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc_status_normal ; 

svn_error_t *
FUNC21(svn_stream_t **normal_stream,
                                  svn_wc_context_t *wc_ctx,
                                  const char *local_abspath,
                                  const svn_opt_revision_t *revision,
                                  svn_boolean_t expand_keywords,
                                  svn_boolean_t normalize_eols,
                                  svn_cancel_func_t cancel_func,
                                  void *cancel_baton,
                                  apr_pool_t *result_pool,
                                  apr_pool_t *scratch_pool)
{
  apr_hash_t *kw = NULL;
  svn_subst_eol_style_t style;
  apr_hash_t *props;
  svn_string_t *eol_style, *keywords, *special;
  const char *eol = NULL;
  svn_boolean_t local_mod = FALSE;
  svn_stream_t *input;
  svn_node_kind_t kind;

  FUNC2(FUNC0(revision->kind));

  FUNC1(FUNC19(&kind, wc_ctx, local_abspath,
                            (revision->kind != svn_opt_revision_working),
                            FALSE, scratch_pool));

  if (kind == svn_node_unknown || kind == svn_node_none)
    return FUNC6(SVN_ERR_UNVERSIONED_RESOURCE, NULL,
                             FUNC3("'%s' is not under version control"),
                             FUNC5(local_abspath,
                                                    scratch_pool));
  if (kind != svn_node_file)
    return FUNC6(SVN_ERR_CLIENT_IS_DIRECTORY, NULL,
                             FUNC3("'%s' refers to a directory"),
                             FUNC5(local_abspath,
                                                    scratch_pool));

  if (revision->kind != svn_opt_revision_working)
    {
      FUNC1(FUNC16(&input, wc_ctx, local_abspath,
                                            result_pool, scratch_pool));
      if (input == NULL)
        return FUNC6(SVN_ERR_ILLEGAL_TARGET, NULL,
                 FUNC3("'%s' has no pristine version until it is committed"),
                 FUNC5(local_abspath, scratch_pool));

      FUNC1(FUNC17(&props, wc_ctx, local_abspath,
                                        scratch_pool, scratch_pool));
    }
  else
    {
      svn_wc_status3_t *status;

      FUNC1(FUNC10(&input, local_abspath, scratch_pool,
                                       result_pool));

      FUNC1(FUNC18(&props, wc_ctx, local_abspath, scratch_pool,
                                scratch_pool));
      FUNC1(FUNC20(&status, wc_ctx, local_abspath, scratch_pool,
                             scratch_pool));
      if (status->node_status != svn_wc_status_normal)
        local_mod = TRUE;
    }

  eol_style = FUNC7(props, SVN_PROP_EOL_STYLE);
  keywords = FUNC7(props, SVN_PROP_KEYWORDS);
  special = FUNC7(props, SVN_PROP_SPECIAL);

  if (eol_style)
    FUNC12(&style, &eol, eol_style->data);

  if (keywords)
    {
      svn_revnum_t changed_rev;
      const char *rev_str;
      const char *author;
      const char *url;
      apr_time_t tm;
      const char *repos_root_url;
      const char *repos_relpath;

      FUNC1(FUNC14(&changed_rev, &tm, &author, wc_ctx,
                                            local_abspath, scratch_pool,
                                            scratch_pool));
      FUNC1(FUNC15(NULL, &repos_relpath, &repos_root_url,
                                          NULL,
                                          wc_ctx, local_abspath, scratch_pool,
                                          scratch_pool));
      url = FUNC9(repos_root_url, repos_relpath,
                                        scratch_pool);

      if (local_mod)
        {
          /* For locally modified files, we'll append an 'M'
             to the revision number, and set the author to
             "(local)" since we can't always determine the
             current user's username */
          rev_str = FUNC4(scratch_pool, "%ldM", changed_rev);
          author = FUNC3("(local)");

          if (! special)
            {
              /* Use the modified time from the working copy for files */
              FUNC1(FUNC8(&tm, local_abspath,
                                                scratch_pool));
            }
        }
      else
        {
          rev_str = FUNC4(scratch_pool, "%ld", changed_rev);
        }

      FUNC1(FUNC11(&kw, keywords->data, rev_str, url,
                                        repos_root_url, tm, author,
                                        scratch_pool));
    }

  /* Wrap the output stream if translation is needed. */
  if (eol != NULL || kw != NULL)
    input = FUNC13(
      input,
      (eol_style && normalize_eols) ? SVN_SUBST_NATIVE_EOL_STR : eol,
      FALSE, kw, expand_keywords, result_pool);

  *normal_stream = input;

  return SVN_NO_ERROR;
}