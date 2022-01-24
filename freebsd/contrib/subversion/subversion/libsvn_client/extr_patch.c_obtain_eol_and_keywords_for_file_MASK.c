#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_subst_eol_style_t ;
struct TYPE_3__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_time_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_EOL_STYLE ; 
 int /*<<< orphan*/  SVN_PROP_KEYWORDS ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,char const*,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const**,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(apr_hash_t **keywords,
                                 svn_subst_eol_style_t *eol_style,
                                 const char **eol_str,
                                 svn_wc_context_t *wc_ctx,
                                 const char *local_abspath,
                                 apr_pool_t *result_pool,
                                 apr_pool_t *scratch_pool)
{
  apr_hash_t *props;
  svn_string_t *keywords_val, *eol_style_val;

  FUNC0(FUNC8(&props, wc_ctx, local_abspath,
                            scratch_pool, scratch_pool));
  keywords_val = FUNC2(props, SVN_PROP_KEYWORDS);
  if (keywords_val)
    {
      svn_revnum_t changed_rev;
      apr_time_t changed_date;
      const char *rev_str;
      const char *author;
      const char *url;
      const char *repos_root_url;
      const char *repos_relpath;

      FUNC0(FUNC6(&changed_rev,
                                            &changed_date,
                                            &author, wc_ctx,
                                            local_abspath,
                                            scratch_pool,
                                            scratch_pool));
      rev_str = FUNC1(scratch_pool, "%ld", changed_rev);
      FUNC0(FUNC7(NULL, &repos_relpath, &repos_root_url,
                                          NULL,
                                          wc_ctx, local_abspath,
                                          scratch_pool, scratch_pool));
      url = FUNC3(repos_root_url, repos_relpath,
                                        scratch_pool);

      FUNC0(FUNC4(keywords,
                                        keywords_val->data,
                                        rev_str, url, repos_root_url,
                                        changed_date,
                                        author, result_pool));
    }

  eol_style_val = FUNC2(props, SVN_PROP_EOL_STYLE);
  if (eol_style_val)
    {
      FUNC5(eol_style,
                                     eol_str,
                                     eol_style_val->data);
    }

  return SVN_NO_ERROR;
}