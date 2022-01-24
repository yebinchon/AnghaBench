#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_43__   TYPE_5__ ;
typedef  struct TYPE_42__   TYPE_4__ ;
typedef  struct TYPE_41__   TYPE_3__ ;
typedef  struct TYPE_40__   TYPE_2__ ;
typedef  struct TYPE_39__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_subst_eol_style_t ;
struct TYPE_39__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
struct TYPE_40__ {scalar_t__ kind; } ;
typedef  TYPE_2__ svn_opt_revision_t ;
struct TYPE_41__ {scalar_t__ apr_err; } ;
typedef  TYPE_3__ svn_error_t ;
struct TYPE_42__ {int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  cancel_func; int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_4__ svn_client_ctx_t ;
struct TYPE_43__ {int /*<<< orphan*/  rev; int /*<<< orphan*/  url; } ;
typedef  TYPE_5__ svn_client__pathrev_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_time_t ;
typedef  int /*<<< orphan*/  apr_ssize_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  SVN_ERR_CLIENT_IS_DIRECTORY ; 
 scalar_t__ SVN_ERR_FS_NOT_FILE ; 
 TYPE_3__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_ENTRY_COMMITTED_DATE ; 
 int /*<<< orphan*/  SVN_PROP_ENTRY_COMMITTED_REV ; 
 int /*<<< orphan*/  SVN_PROP_ENTRY_LAST_AUTHOR ; 
 int /*<<< orphan*/  SVN_PROP_EOL_STYLE ; 
 int /*<<< orphan*/  SVN_PROP_KEYWORDS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (TYPE_2__ const*,char const*) ; 
 TYPE_2__* FUNC8 (TYPE_2__ const*,char const*) ; 
 TYPE_2__* FUNC9 (TYPE_2__ const*,TYPE_2__ const*) ; 
 TYPE_3__* FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,TYPE_2__ const*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ **,TYPE_5__**,char const*,int /*<<< orphan*/ *,TYPE_2__ const*,TYPE_2__ const*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC12 (char const**,char const*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC13 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC14 (TYPE_3__*) ; 
 TYPE_1__* FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ svn_opt_revision_unspecified ; 
 int /*<<< orphan*/  FUNC16 (char const*) ; 
 TYPE_3__* FUNC17 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC18 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC19 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC22 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_subst_eol_style_none ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (void const*) ; 
 TYPE_3__* FUNC27 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC28(apr_hash_t **returned_props,
                svn_stream_t *out,
                const char *path_or_url,
                const svn_opt_revision_t *peg_revision,
                const svn_opt_revision_t *revision,
                svn_boolean_t expand_keywords,
                svn_client_ctx_t *ctx,
                apr_pool_t *result_pool,
                apr_pool_t *scratch_pool)
{
  svn_ra_session_t *ra_session;
  svn_client__pathrev_t *loc;
  svn_string_t *eol_style;
  svn_string_t *keywords;
  apr_hash_t *props = NULL;
  const char *repos_root_url;
  svn_stream_t *output = out;
  svn_error_t *err;

  /* ### Inconsistent default revision logic in this command. */
  if (peg_revision->kind == svn_opt_revision_unspecified)
    {
      peg_revision = FUNC8(peg_revision,
                                                            path_or_url);
      revision = FUNC7(revision, path_or_url);
    }
  else
    {
      revision = FUNC9(revision, peg_revision);
    }

  if (! FUNC16(path_or_url)
      && FUNC0(peg_revision->kind)
      && FUNC0(revision->kind))
    {
      const char *local_abspath;
      svn_stream_t *normal_stream;

      FUNC1(FUNC12(&local_abspath, path_or_url,
                                      scratch_pool));
      FUNC1(FUNC10(&normal_stream, ctx->wc_ctx,
                                            local_abspath, revision,
                                            expand_keywords, FALSE,
                                            ctx->cancel_func, ctx->cancel_baton,
                                            scratch_pool, scratch_pool));

      /* We don't promise to close output, so disown it to ensure we don't. */
      output = FUNC21(output, scratch_pool);

      if (returned_props)
        FUNC1(FUNC27(returned_props, ctx->wc_ctx, local_abspath,
                                  result_pool, scratch_pool));

      return FUNC14(FUNC20(normal_stream, output,
                                              ctx->cancel_func,
                                              ctx->cancel_baton, scratch_pool));
    }

  /* Get an RA plugin for this filesystem object. */
  FUNC1(FUNC11(&ra_session, &loc,
                                            path_or_url, NULL,
                                            peg_revision,
                                            revision, ctx, scratch_pool));

  /* Find the repos root URL */
  FUNC1(FUNC18(ra_session, &repos_root_url, scratch_pool));

  /* Grab some properties we need to know in order to figure out if anything
     special needs to be done with this file. */
  err = FUNC17(ra_session, "", loc->rev, NULL, NULL, &props,
                        result_pool);
  if (err)
    {
      if (err->apr_err == SVN_ERR_FS_NOT_FILE)
        {
          return FUNC13(SVN_ERR_CLIENT_IS_DIRECTORY, err,
                                   FUNC2("URL '%s' refers to a directory"),
                                   loc->url);
        }
      else
        {
          return FUNC14(err);
        }
    }

  eol_style = FUNC15(props, SVN_PROP_EOL_STYLE);
  keywords = FUNC15(props, SVN_PROP_KEYWORDS);

  if (eol_style || keywords)
    {
      /* It's a file with no special eol style or keywords. */
      svn_subst_eol_style_t eol;
      const char *eol_str;
      apr_hash_t *kw;

      if (eol_style)
        FUNC23(&eol, &eol_str, eol_style->data);
      else
        {
          eol = svn_subst_eol_style_none;
          eol_str = NULL;
        }


      if (keywords && expand_keywords)
        {
          svn_string_t *cmt_rev, *cmt_date, *cmt_author;
          apr_time_t when = 0;

          cmt_rev = FUNC15(props, SVN_PROP_ENTRY_COMMITTED_REV);
          cmt_date = FUNC15(props, SVN_PROP_ENTRY_COMMITTED_DATE);
          cmt_author = FUNC15(props, SVN_PROP_ENTRY_LAST_AUTHOR);
          if (cmt_date)
            FUNC1(FUNC25(&when, cmt_date->data, scratch_pool));

          FUNC1(FUNC22(&kw, keywords->data,
                                            cmt_rev->data, loc->url,
                                            repos_root_url, when,
                                            cmt_author ?
                                              cmt_author->data : NULL,
                                            scratch_pool));
        }
      else
        kw = NULL;

      /* Interject a translating stream */
      output = FUNC24(FUNC21(out,
                                                             scratch_pool),
                                           eol_str, FALSE, kw, TRUE,
                                           scratch_pool);
    }

  if (returned_props)
    {
      /* filter entry and WC props */
      apr_hash_index_t *hi;
      const void *key;
      apr_ssize_t klen;

      for (hi = FUNC3(scratch_pool, props);
           hi; hi = FUNC4(hi))
        {
          FUNC6(hi, &key, &klen, NULL);
          if (!FUNC26(key))
            FUNC5(props, key, klen, NULL);
        }

      *returned_props = props;
    }

  FUNC1(FUNC17(ra_session, "", loc->rev, output, NULL, NULL,
                          scratch_pool));

  if (out != output)
    /* Close the interjected stream */
    FUNC1(FUNC19(output));

  return SVN_NO_ERROR;
}