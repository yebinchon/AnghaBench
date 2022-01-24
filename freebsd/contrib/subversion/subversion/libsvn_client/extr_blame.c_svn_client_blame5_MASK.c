#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_39__   TYPE_8__ ;
typedef  struct TYPE_38__   TYPE_7__ ;
typedef  struct TYPE_37__   TYPE_6__ ;
typedef  struct TYPE_36__   TYPE_5__ ;
typedef  struct TYPE_35__   TYPE_4__ ;
typedef  struct TYPE_34__   TYPE_3__ ;
typedef  struct TYPE_33__   TYPE_2__ ;
typedef  struct TYPE_32__   TYPE_27__ ;
typedef  struct TYPE_31__   TYPE_26__ ;
typedef  struct TYPE_30__   TYPE_1__ ;

/* Type definitions */
struct TYPE_34__ {scalar_t__ text_status; scalar_t__ prop_status; } ;
typedef  TYPE_3__ svn_wc_status3_t ;
typedef  scalar_t__ svn_subst_eol_style_t ;
struct TYPE_35__ {int /*<<< orphan*/  data; scalar_t__ len; } ;
typedef  TYPE_4__ svn_stringbuf_t ;
struct TYPE_36__ {char* data; } ;
typedef  TYPE_5__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
struct TYPE_30__ {scalar_t__ number; } ;
struct TYPE_37__ {scalar_t__ kind; TYPE_1__ value; } ;
typedef  TYPE_6__ svn_opt_revision_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_diff_file_options_t ;
struct TYPE_38__ {int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  (* cancel_func ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_7__ svn_client_ctx_t ;
typedef  int /*<<< orphan*/  (* svn_client_blame_receiver3_t ) (void*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ;
struct TYPE_39__ {int /*<<< orphan*/  url; } ;
typedef  TYPE_8__ svn_client__pathrev_t ;
typedef  int svn_boolean_t ;
struct file_rev_baton {scalar_t__ start_rev; scalar_t__ end_rev; char const* target; int include_merged_revisions; char const* last_filename; int backwards; int check_mime_type; int /*<<< orphan*/ * prevfilepool; int /*<<< orphan*/ * filepool; int /*<<< orphan*/ * currpool; int /*<<< orphan*/ * lastpool; TYPE_26__* chain; TYPE_27__* merged_chain; int /*<<< orphan*/ * last_rev; int /*<<< orphan*/  const* diff_options; int /*<<< orphan*/ * mainpool; int /*<<< orphan*/  repos_root_url; int /*<<< orphan*/ * last_props; scalar_t__ last_revnum; int /*<<< orphan*/ * last_original_filename; TYPE_7__* ctx; } ;
struct blame {scalar_t__ start; struct blame* next; TYPE_2__* rev; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_off_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_33__ {scalar_t__ revision; char* path; int /*<<< orphan*/ * rev_props; } ;
struct TYPE_32__ {struct blame* blame; int /*<<< orphan*/ * pool; int /*<<< orphan*/ * avail; } ;
struct TYPE_31__ {struct blame* blame; int /*<<< orphan*/ * pool; int /*<<< orphan*/ * avail; } ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_CLIENT_BAD_REVISION ; 
 int /*<<< orphan*/  SVN_ERR_CLIENT_IS_BINARY_FILE ; 
 scalar_t__ SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_EOL_STYLE ; 
 int /*<<< orphan*/  SVN_PROP_MIME_TYPE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*,TYPE_26__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ),int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int) ; 
 struct blame* FUNC6 (TYPE_26__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  file_rev_handler ; 
 int /*<<< orphan*/  FUNC7 (TYPE_26__*,TYPE_27__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,TYPE_6__*,int,int,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ),int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,TYPE_6__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,TYPE_6__ const*,TYPE_6__ const*,TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_8__**,int /*<<< orphan*/ *,char const*,TYPE_6__ const*,TYPE_6__*,TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char const**,char const*,int /*<<< orphan*/ *) ; 
 char const* FUNC14 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 TYPE_5__* FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_io_file_del_on_pool_cleanup ; 
 scalar_t__ FUNC18 (char const*) ; 
 scalar_t__ svn_opt_revision_base ; 
 scalar_t__ svn_opt_revision_number ; 
 scalar_t__ svn_opt_revision_unspecified ; 
 scalar_t__ svn_opt_revision_working ; 
 scalar_t__ FUNC19 (char const*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 void* FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 char* FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,char*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ,struct file_rev_baton*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ),int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ **,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,TYPE_4__**,char*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (scalar_t__*,char const**,char*) ; 
 scalar_t__ svn_subst_eol_style_native ; 
 int /*<<< orphan*/ * FUNC34 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC36 (TYPE_5__ const**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC37 (TYPE_3__**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc_status_none ; 
 scalar_t__ svn_wc_status_normal ; 

svn_error_t *
FUNC38(const char *target,
                  const svn_opt_revision_t *peg_revision,
                  const svn_opt_revision_t *start,
                  const svn_opt_revision_t *end,
                  const svn_diff_file_options_t *diff_options,
                  svn_boolean_t ignore_mime_type,
                  svn_boolean_t include_merged_revisions,
                  svn_client_blame_receiver3_t receiver,
                  void *receiver_baton,
                  svn_client_ctx_t *ctx,
                  apr_pool_t *pool)
{
  struct file_rev_baton frb;
  svn_ra_session_t *ra_session;
  svn_revnum_t start_revnum, end_revnum;
  struct blame *walk, *walk_merged = NULL;
  apr_pool_t *iterpool;
  svn_stream_t *last_stream;
  svn_stream_t *stream;
  const char *target_abspath_or_url;

  if (start->kind == svn_opt_revision_unspecified
      || end->kind == svn_opt_revision_unspecified)
    return FUNC15
      (SVN_ERR_CLIENT_BAD_REVISION, NULL, NULL);

  if (FUNC19(target))
    target_abspath_or_url = target;
  else
    FUNC1(FUNC13(&target_abspath_or_url, target, pool));

  /* Get an RA plugin for this filesystem object. */
  FUNC1(FUNC11(&ra_session, NULL,
                                            target, NULL, peg_revision,
                                            peg_revision,
                                            ctx, pool));

  FUNC1(FUNC10(&start_revnum, NULL, ctx->wc_ctx,
                                          target_abspath_or_url, ra_session,
                                          start, pool));

  FUNC1(FUNC10(&end_revnum, NULL, ctx->wc_ctx,
                                          target_abspath_or_url, ra_session,
                                          end, pool));

  {
    svn_client__pathrev_t *loc;
    svn_opt_revision_t younger_end;
    younger_end.kind = svn_opt_revision_number;
    younger_end.value.number = FUNC0(start_revnum, end_revnum);

    FUNC1(FUNC12(&loc, ra_session,
                                            target, peg_revision,
                                            &younger_end,
                                            ctx, pool));

    /* Make the session point to the real URL. */
    FUNC1(FUNC27(ra_session, loc->url, pool));
  }

  /* We check the mime-type of the yougest revision before getting all
     the older revisions. */
  if (!ignore_mime_type
      && start_revnum < end_revnum)
    {
      apr_hash_t *props;
      const char *mime_type = NULL;

      if (FUNC19(target)
          || start_revnum > end_revnum
          || (end->kind != svn_opt_revision_working
              && end->kind != svn_opt_revision_base))
        {
          FUNC1(FUNC24(ra_session, "", end_revnum, NULL, NULL,
                                  &props, pool));

          mime_type = FUNC23(props, SVN_PROP_MIME_TYPE);
        }
      else 
        {
          const svn_string_t *value;

          if (end->kind == svn_opt_revision_working)
            FUNC1(FUNC36(&value, ctx->wc_ctx,
                                     target_abspath_or_url,
                                     SVN_PROP_MIME_TYPE,
                                     pool, pool));
          else
            {
              FUNC1(FUNC35(&props, ctx->wc_ctx,
                                                target_abspath_or_url,
                                                pool, pool));

              value = props ? FUNC17(props, SVN_PROP_MIME_TYPE)
                            : NULL;
            }

          mime_type = value ? value->data : NULL;
        }

      if (mime_type)
        {
          if (FUNC18(mime_type))
            return FUNC16
              (SVN_ERR_CLIENT_IS_BINARY_FILE, 0,
               FUNC3("Cannot calculate blame information for binary file '%s'"),
               (FUNC19(target)
                ? target : FUNC14(target, pool)));
        }
    }

  frb.start_rev = start_revnum;
  frb.end_rev = end_revnum;
  frb.target = target;
  frb.ctx = ctx;
  frb.diff_options = diff_options;
  frb.include_merged_revisions = include_merged_revisions;
  frb.last_filename = NULL;
  frb.last_rev = NULL;
  frb.last_original_filename = NULL;
  frb.chain = FUNC5(pool, sizeof(*frb.chain));
  frb.chain->blame = NULL;
  frb.chain->avail = NULL;
  frb.chain->pool = pool;
  if (include_merged_revisions)
    {
      frb.merged_chain = FUNC5(pool, sizeof(*frb.merged_chain));
      frb.merged_chain->blame = NULL;
      frb.merged_chain->avail = NULL;
      frb.merged_chain->pool = pool;
    }
  frb.backwards = (frb.start_rev > frb.end_rev);
  frb.last_revnum = SVN_INVALID_REVNUM;
  frb.last_props = NULL;
  frb.check_mime_type = (frb.backwards && !ignore_mime_type);

  FUNC1(FUNC26(ra_session, &frb.repos_root_url, pool));

  frb.mainpool = pool;
  /* The callback will flip the following two pools, because it needs
     information from the previous call.  Obviously, it can't rely on
     the lifetime of the pool provided by get_file_revs. */
  frb.lastpool = FUNC21(pool);
  frb.currpool = FUNC21(pool);
  if (include_merged_revisions)
    {
      frb.filepool = FUNC21(pool);
      frb.prevfilepool = FUNC21(pool);
    }

  /* Collect all blame information.
     We need to ensure that we get one revision before the start_rev,
     if available so that we can know what was actually changed in the start
     revision. */
  FUNC1(FUNC25(ra_session, "",
                                frb.backwards ? start_revnum
                                              : FUNC0(0, start_revnum-1),
                                end_revnum,
                                include_merged_revisions,
                                file_rev_handler, &frb, pool));

  if (end->kind == svn_opt_revision_working)
    {
      /* If the local file is modified we have to call the handler on the
         working copy file with keywords unexpanded */
      svn_wc_status3_t *status;

      FUNC1(FUNC37(&status, ctx->wc_ctx, target_abspath_or_url, pool,
                             pool));

      if (status->text_status != svn_wc_status_normal
          || (status->prop_status != svn_wc_status_normal
              && status->prop_status != svn_wc_status_none))
        {
          svn_stream_t *wcfile;
          svn_stream_t *tempfile;
          svn_opt_revision_t rev;
          svn_boolean_t normalize_eols = FALSE;
          const char *temppath;

          if (status->prop_status != svn_wc_status_none)
            {
              const svn_string_t *eol_style;
              FUNC1(FUNC36(&eol_style, ctx->wc_ctx,
                                       target_abspath_or_url,
                                       SVN_PROP_EOL_STYLE,
                                       pool, pool));

              if (eol_style)
                {
                  svn_subst_eol_style_t style;
                  const char *eol;
                  FUNC33(&style, &eol, eol_style->data);

                  normalize_eols = (style == svn_subst_eol_style_native);
                }
            }

          rev.kind = svn_opt_revision_working;
          FUNC1(FUNC9(&wcfile, ctx->wc_ctx,
                                                    target_abspath_or_url, &rev,
                                                    FALSE, normalize_eols,
                                                    ctx->cancel_func,
                                                    ctx->cancel_baton,
                                                    pool, pool));

          FUNC1(FUNC31(&tempfile, &temppath, NULL,
                                         svn_io_file_del_on_pool_cleanup,
                                         pool, pool));

          FUNC1(FUNC29(wcfile, tempfile, ctx->cancel_func,
                                   ctx->cancel_baton, pool));

          FUNC1(FUNC4(frb.last_filename, temppath, frb.chain, NULL,
                                 frb.diff_options,
                                 ctx->cancel_func, ctx->cancel_baton, pool));

          frb.last_filename = temppath;
        }
    }

  /* Report the blame to the caller. */

  /* The callback has to have been called at least once. */
  FUNC2(frb.last_filename != NULL);

  /* Create a pool for the iteration below. */
  iterpool = FUNC21(pool);

  /* Open the last file and get a stream. */
  FUNC1(FUNC30(&last_stream, frb.last_filename,
                                   pool, pool));
  stream = FUNC34(last_stream,
                                       "\n", TRUE, NULL, FALSE, pool);

  /* Perform optional merged chain normalization. */
  if (include_merged_revisions)
    {
      /* If we never created any blame for the original chain, create it now,
         with the most recent changed revision.  This could occur if a file
         was created on a branch and them merged to another branch.  This is
         semanticly a copy, and we want to use the revision on the branch as
         the most recently changed revision.  ### Is this really what we want
         to do here?  Do the sematics of copy change? */
      if (!frb.chain->blame)
        frb.chain->blame = FUNC6(frb.chain, frb.last_rev, 0);

      FUNC7(frb.chain, frb.merged_chain, pool);
      walk_merged = frb.merged_chain->blame;
    }

  /* Process each blame item. */
  for (walk = frb.chain->blame; walk; walk = walk->next)
    {
      apr_off_t line_no;
      svn_revnum_t merged_rev;
      const char *merged_path;
      apr_hash_t *merged_rev_props;

      if (walk_merged)
        {
          merged_rev = walk_merged->rev->revision;
          merged_rev_props = walk_merged->rev->rev_props;
          merged_path = walk_merged->rev->path;
        }
      else
        {
          merged_rev = SVN_INVALID_REVNUM;
          merged_rev_props = NULL;
          merged_path = NULL;
        }

      for (line_no = walk->start;
           !walk->next || line_no < walk->next->start;
           ++line_no)
        {
          svn_boolean_t eof;
          svn_stringbuf_t *sb;

          FUNC20(iterpool);
          FUNC1(FUNC32(stream, &sb, "\n", &eof, iterpool));
          if (ctx->cancel_func)
            FUNC1(ctx->cancel_func(ctx->cancel_baton));
          if (!eof || sb->len)
            {
              if (walk->rev)
                FUNC1(receiver(receiver_baton, start_revnum, end_revnum,
                                 line_no, walk->rev->revision,
                                 walk->rev->rev_props, merged_rev,
                                 merged_rev_props, merged_path,
                                 sb->data, FALSE, iterpool));
              else
                FUNC1(receiver(receiver_baton, start_revnum, end_revnum,
                                 line_no, SVN_INVALID_REVNUM,
                                 NULL, SVN_INVALID_REVNUM,
                                 NULL, NULL,
                                 sb->data, TRUE, iterpool));
            }
          if (eof) break;
        }

      if (walk_merged)
        walk_merged = walk_merged->next;
    }

  FUNC1(FUNC28(stream));

  FUNC22(frb.lastpool);
  FUNC22(frb.currpool);
  if (include_merged_revisions)
    {
      FUNC22(frb.filepool);
      FUNC22(frb.prevfilepool);
    }
  FUNC22(iterpool);

  return SVN_NO_ERROR;
}