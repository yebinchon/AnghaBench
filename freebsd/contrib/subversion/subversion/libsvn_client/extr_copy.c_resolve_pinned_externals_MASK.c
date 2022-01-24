#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_6__ {int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_1__ svn_client_ctx_t ;
struct TYPE_7__ {int /*<<< orphan*/  src_abspath_or_url; int /*<<< orphan*/  src_revnum; } ;
typedef  TYPE_2__ svn_client__copy_pair_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_EXTERNALS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,char const*,char const*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_depth_infinity ; 
 char* FUNC11 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_node_dir ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC19 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC21(apr_hash_t **pinned_externals,
                         const apr_hash_t *externals_to_pin,
                         svn_client__copy_pair_t *pair,
                         svn_ra_session_t *ra_session,
                         const char *repos_root_url,
                         svn_client_ctx_t *ctx,
                         apr_pool_t *result_pool,
                         apr_pool_t *scratch_pool)
{
  const char *old_url = NULL;
  apr_hash_t *externals_props;
  apr_hash_index_t *hi;
  apr_pool_t *iterpool;

  *pinned_externals = FUNC4(result_pool);

  if (FUNC13(pair->src_abspath_or_url))
    {
      FUNC0(FUNC9(&old_url, ra_session,
                                                pair->src_abspath_or_url,
                                                scratch_pool));
      externals_props = FUNC4(scratch_pool);
      FUNC0(FUNC10(externals_props, NULL,
                                         SVN_PROP_EXTERNALS,
                                         pair->src_abspath_or_url, "",
                                         svn_node_dir,
                                         pair->src_revnum,
                                         ra_session,
                                         svn_depth_infinity,
                                         scratch_pool,
                                         scratch_pool));
    }
  else
    {
      FUNC0(FUNC20(&externals_props, NULL,
                                                   ctx->wc_ctx,
                                                   pair->src_abspath_or_url,
                                                   svn_depth_infinity,
                                                   scratch_pool, scratch_pool));

      /* ### gather_definitions returns propvals as const char * */
      for (hi = FUNC3(scratch_pool, externals_props);
           hi;
           hi = FUNC5(hi))
        {
          const char *local_abspath_or_url = FUNC6(hi);
          const char *propval = FUNC7(hi);
          svn_string_t *new_propval = FUNC18(propval, scratch_pool);

          FUNC12(externals_props, local_abspath_or_url, new_propval);
        }
    }

  if (FUNC2(externals_props) == 0)
    {
      if (old_url)
        FUNC0(FUNC17(ra_session, old_url, scratch_pool));
      return SVN_NO_ERROR;
    }

  iterpool = FUNC15(scratch_pool);
  for (hi = FUNC3(scratch_pool, externals_props);
       hi;
       hi = FUNC5(hi))
    {
      const char *local_abspath_or_url = FUNC6(hi);
      svn_string_t *externals_propval = FUNC7(hi);
      const char *relpath;
      svn_string_t *new_propval;

      FUNC14(iterpool);

      FUNC0(FUNC8(&new_propval, externals_propval,
                                 externals_to_pin,
                                 repos_root_url, local_abspath_or_url, ctx,
                                 result_pool, iterpool));
      if (new_propval)
        {
          if (FUNC13(pair->src_abspath_or_url))
            relpath = FUNC19(pair->src_abspath_or_url,
                                            local_abspath_or_url,
                                            result_pool);
          else
            relpath = FUNC11(pair->src_abspath_or_url,
                                               local_abspath_or_url);
          FUNC1(relpath);

          FUNC12(*pinned_externals, relpath, new_propval);
        }
    }
  FUNC16(iterpool);

  if (old_url)
    FUNC0(FUNC17(ra_session, old_url, scratch_pool));

  return SVN_NO_ERROR;
}