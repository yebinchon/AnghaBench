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
typedef  int /*<<< orphan*/  svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct getter_baton {char const* local_abspath; int /*<<< orphan*/  const* mime_type; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char const* SVN_PROP_MIME_TYPE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/ * get_file_for_validation ; 
 scalar_t__ FUNC7 (char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const**,char const*,int /*<<< orphan*/  const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct getter_baton*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC11(apr_hash_t **prepared_props,
                           const char *local_abspath,
                           svn_node_kind_t node_kind,
                           const apr_hash_t *props,
                           svn_boolean_t skip_some_checks,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  const svn_string_t *mime_type;
  struct getter_baton gb;
  apr_hash_index_t *hi;

  /* While we allocate new parts of *PREPARED_PROPS in RESULT_POOL, we
     don't promise to deep-copy the unchanged keys and values. */
  *prepared_props = FUNC2(result_pool);

  /* Before we can canonicalize svn:eol-style we need to know svn:mime-type,
   * so process that first. */
  mime_type = FUNC8((apr_hash_t *)props, SVN_PROP_MIME_TYPE);
  if (mime_type)
    {
      FUNC0(FUNC10(
                &mime_type, SVN_PROP_MIME_TYPE, mime_type,
                local_abspath, node_kind, skip_some_checks,
                NULL, NULL, scratch_pool));
      FUNC9(*prepared_props, SVN_PROP_MIME_TYPE, mime_type);
    }

  /* Set up the context for canonicalizing the other properties. */
  gb.mime_type = mime_type;
  gb.local_abspath = local_abspath;

  /* Check and canonicalize the other properties. */
  for (hi = FUNC1(scratch_pool, (apr_hash_t *)props); hi;
       hi = FUNC3(hi))
    {
      const char *name = FUNC4(hi);
      const svn_string_t *value = FUNC5(hi);

      if (FUNC7(name, SVN_PROP_MIME_TYPE) == 0)
        continue;

      FUNC0(FUNC6(name));
      FUNC0(FUNC10(
                &value, name, value,
                local_abspath, node_kind, skip_some_checks,
                get_file_for_validation, &gb, scratch_pool));
      FUNC9(*prepared_props, name, value);
    }

  return SVN_NO_ERROR;
}