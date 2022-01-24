#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_subst_eol_style_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_EOL_STYLE ; 
 int /*<<< orphan*/  SVN_PROP_KEYWORDS ; 
 int /*<<< orphan*/  SVN_PROP_SPECIAL ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const**,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC7(svn_subst_eol_style_t *style,
                           const char **eol,
                           apr_hash_t **keywords,
                           svn_boolean_t *special,
                           svn_wc__db_t *db,
                           const char *local_abspath,
                           apr_hash_t *props,
                           svn_boolean_t for_normalization,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  const char *propval;
  FUNC1(FUNC2(local_abspath));

  if (props == NULL)
    FUNC0(FUNC6(&props, db, local_abspath,
                                     scratch_pool, scratch_pool));

  if (eol)
    {
      propval = FUNC3(props, SVN_PROP_EOL_STYLE);

      FUNC4(style, eol, propval);
    }

  if (keywords)
    {
      propval = FUNC3(props, SVN_PROP_KEYWORDS);

      if (!propval || *propval == '\0')
        *keywords = NULL;
      else
        FUNC0(FUNC5(keywords,
                                        db, local_abspath, NULL,
                                        propval, for_normalization,
                                        result_pool, scratch_pool));
    }
  if (special)
    {
      propval = FUNC3(props, SVN_PROP_SPECIAL);

      *special = (propval != NULL);
    }

  return SVN_NO_ERROR;
}