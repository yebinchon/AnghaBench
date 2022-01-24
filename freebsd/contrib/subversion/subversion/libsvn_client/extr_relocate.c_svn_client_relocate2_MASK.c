#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_node_kind_t ;
struct TYPE_17__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
struct TYPE_18__ {int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_2__ svn_client_ctx_t ;
typedef  scalar_t__ svn_boolean_t ;
struct validator_baton_t {char const* path; int /*<<< orphan*/ * pool; int /*<<< orphan*/  url_uuids; TYPE_2__* ctx; } ;
struct url_uuid_t {int dummy; } ;
typedef  size_t apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  SVN_ERR_ILLEGAL_TARGET ; 
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC8 (char const*,char const*) ; 
 size_t FUNC9 (char*) ; 
 TYPE_1__* FUNC10 (char const**,int /*<<< orphan*/ *,char const*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC11 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 TYPE_1__* FUNC14 (TYPE_1__*) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ FUNC15 (char const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC19 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC20 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC21 (int /*<<< orphan*/ ,char const*,char const*,char const*,int /*<<< orphan*/ ,struct validator_baton_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  validator_func ; 

svn_error_t *
FUNC22(const char *wcroot_dir,
                     const char *from_prefix,
                     const char *to_prefix,
                     svn_boolean_t ignore_externals,
                     svn_client_ctx_t *ctx,
                     apr_pool_t *pool)
{
  struct validator_baton_t vb;
  const char *local_abspath;
  apr_hash_t *externals_hash = NULL;
  apr_hash_index_t *hi;
  apr_pool_t *iterpool = NULL;
  const char *old_repos_root_url, *new_repos_root_url;
  char *sig_from_prefix, *sig_to_prefix;
  apr_size_t index_from, index_to;

  /* Populate our validator callback baton, and call the relocate code. */
  vb.ctx = ctx;
  vb.path = wcroot_dir;
  vb.url_uuids = FUNC2(pool, 1, sizeof(struct url_uuid_t));
  vb.pool = pool;

  if (FUNC15(wcroot_dir))
    return FUNC13(SVN_ERR_ILLEGAL_TARGET, NULL,
                             FUNC1("'%s' is not a local path"),
                             wcroot_dir);

  FUNC0(FUNC11(&local_abspath, wcroot_dir, pool));

  /* If we're ignoring externals, just relocate and get outta here. */
  if (ignore_externals)
    {
      return FUNC14(FUNC21(ctx->wc_ctx, local_abspath,
                                              from_prefix, to_prefix,
                                              validator_func, &vb, pool));
    }

  /* Fetch our current root URL. */
  FUNC0(FUNC10(&old_repos_root_url, NULL /* uuid */,
                                    local_abspath, ctx, pool, pool));

  /* Perform the relocation. */
  FUNC0(FUNC21(ctx->wc_ctx, local_abspath, from_prefix, to_prefix,
                           validator_func, &vb, pool));

  /* Now fetch new current root URL. */
  FUNC0(FUNC10(&new_repos_root_url, NULL /* uuid */,
                                    local_abspath, ctx, pool, pool));


  /* Relocate externals, too (if any). */
  FUNC0(FUNC19(&externals_hash,
                                          ctx->wc_ctx, local_abspath,
                                          pool, pool));
  if (! FUNC3(externals_hash))
    return SVN_NO_ERROR;

  /* A valid prefix for the main working copy may be too long to be
     valid for an external.  Trim any common trailing characters to
     leave the significant part that changes. */
  sig_from_prefix = FUNC7(pool, from_prefix);
  sig_to_prefix = FUNC7(pool, to_prefix);
  index_from = FUNC9(sig_from_prefix);
  index_to = FUNC9(sig_to_prefix);
  while (index_from && index_to
         && sig_from_prefix[index_from] == sig_to_prefix[index_to])
    {
      sig_from_prefix[index_from] = sig_to_prefix[index_to] = '\0';
      --index_from;
      --index_to;
    }

  iterpool = FUNC17(pool);

  for (hi = FUNC4(pool, externals_hash);
       hi != NULL;
       hi = FUNC5(hi))
    {
      svn_node_kind_t kind;
      const char *this_abspath = FUNC6(hi);

      FUNC16(iterpool);

      FUNC0(FUNC20(&kind, NULL, NULL, NULL, NULL,
                                         ctx->wc_ctx,
                                         local_abspath, this_abspath,
                                         FALSE, iterpool, iterpool));

      if (kind == svn_node_dir)
        {
          const char *this_repos_root_url;
          svn_error_t *err;

          err = FUNC10(&this_repos_root_url, NULL /* uuid */,
                                          this_abspath, ctx, iterpool, iterpool);

          /* Ignore externals that aren't present in the working copy.
           * This can happen if an external is deleted from disk accidentally,
           * or if an external is configured on a locally added directory. */
          if (err && err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
            {
              FUNC12(err);
              continue;
            }
          FUNC0(err);

          if (FUNC8(old_repos_root_url, this_repos_root_url) == 0)
            FUNC0(FUNC22(this_abspath,
                                         sig_from_prefix, sig_to_prefix,
                                         FALSE /* ignore_externals */,
                                         ctx, iterpool));
        }
    }

  FUNC18(iterpool);

  return SVN_NO_ERROR;
}