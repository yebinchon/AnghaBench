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
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_CLIENT_PROPERTY_NAME ; 
 int /*<<< orphan*/  SVN_ERR_CL_ARG_PARSING_ERROR ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char const*,int) ; 
 char* FUNC4 (char const*,char) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int /*<<< orphan*/ * FUNC9 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char const**,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC12(apr_hash_t **revprop_table_p, const char *revprop_spec,
                      apr_pool_t *pool)
{
  const char *sep, *propname;
  svn_string_t *propval;

  if (! *revprop_spec)
    return FUNC5(SVN_ERR_CL_ARG_PARSING_ERROR, NULL,
                            FUNC1("Revision property pair is empty"));

  if (! *revprop_table_p)
    *revprop_table_p = FUNC2(pool);

  sep = FUNC4(revprop_spec, '=');
  if (sep)
    {
      propname = FUNC3(pool, revprop_spec, sep - revprop_spec);
      FUNC0(FUNC11(&propname, propname, pool));
      propval = FUNC9(sep + 1, pool);
    }
  else
    {
      FUNC0(FUNC11(&propname, revprop_spec, pool));
      propval = FUNC10(pool);
    }

  if (!FUNC8(propname))
    return FUNC6(SVN_ERR_CLIENT_PROPERTY_NAME, NULL,
                             FUNC1("'%s' is not a valid Subversion property name"),
                             propname);

  FUNC7(*revprop_table_p, propname, propval);

  return SVN_NO_ERROR;
}