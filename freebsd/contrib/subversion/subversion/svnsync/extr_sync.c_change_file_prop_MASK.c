#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_5__ {int /*<<< orphan*/  wrapped_node_baton; TYPE_3__* edit_baton; } ;
typedef  TYPE_2__ node_baton_t ;
struct TYPE_6__ {TYPE_1__* wrapped_editor; int /*<<< orphan*/ * normalized_node_props_counter; void* mergeinfo_tweaked; int /*<<< orphan*/  source_prop_encoding; void* svnmerge_blocked; scalar_t__ migrate_svnmerge; void* svnmerge_migrated; void* mergeinfo_stripped; scalar_t__ strip_mergeinfo; } ;
typedef  TYPE_3__ edit_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_4__ {int /*<<< orphan*/ * (* change_file_prop ) (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* SVN_PROP_MERGEINFO ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const**,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const**,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*) ; 
 scalar_t__ svn_prop_regular_kind ; 
 scalar_t__ FUNC6 (char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC7(void *file_baton,
                 const char *name,
                 const svn_string_t *value,
                 apr_pool_t *pool)
{
  node_baton_t *fb = file_baton;
  edit_baton_t *eb = fb->edit_baton;

  /* only regular properties can pass over libsvn_ra */
  if (FUNC6(name) != svn_prop_regular_kind)
    return SVN_NO_ERROR;

  /* Maybe drop svn:mergeinfo.  */
  if (eb->strip_mergeinfo && (FUNC3(name, SVN_PROP_MERGEINFO) == 0))
    {
      eb->mergeinfo_stripped = TRUE;
      return SVN_NO_ERROR;
    }

  /* Maybe drop (errantly set, as this is a file) svnmerge.py properties. */
  if (eb->migrate_svnmerge && (FUNC3(name, "svnmerge-integrated") == 0))
    {
      eb->svnmerge_migrated = TRUE;
      return SVN_NO_ERROR;
    }

  /* Remember if we see any svnmerge-blocked properties.  (They really
     shouldn't be here, as this is a file, but whatever...)  */
  if (eb->migrate_svnmerge && (FUNC3(name, "svnmerge-blocked") == 0))
    {
      eb->svnmerge_blocked = TRUE;
    }

  /* Normalize svn:* properties as necessary. */
  if (FUNC5(name))
    {
      svn_boolean_t was_normalized;
      svn_boolean_t mergeinfo_tweaked = FALSE;

      /* Normalize encoding to UTF-8, and EOL style to LF. */
      FUNC0(FUNC1(&value, &was_normalized,
                               eb->source_prop_encoding, pool, pool));
      /* Correct malformed mergeinfo. */
      if (value && FUNC3(name, SVN_PROP_MERGEINFO) == 0)
        {
          FUNC0(FUNC2(&value, &mergeinfo_tweaked,
                                      pool, pool));
          if (mergeinfo_tweaked)
            eb->mergeinfo_tweaked = TRUE;
        }
      if (was_normalized)
        (*(eb->normalized_node_props_counter))++;
    }

  return eb->wrapped_editor->change_file_prop(fb->wrapped_node_baton,
                                              name, value, pool);
}