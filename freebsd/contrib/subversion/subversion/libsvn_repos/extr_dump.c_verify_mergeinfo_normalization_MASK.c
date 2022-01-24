#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_2__ {int /*<<< orphan*/  pool; } ;
struct verify_mergeinfo_normalization_baton {int /*<<< orphan*/  path; int /*<<< orphan*/  notify_baton; int /*<<< orphan*/  notify_func; TYPE_1__ buffer; int /*<<< orphan*/  normalized_paths; } ;
typedef  int /*<<< orphan*/  apr_ssize_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_MERGEINFO ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 char const* normalized_collision ; 
 char const* normalized_unique ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  svn_repos_notify_warning_mergeinfo_collision ; 
 int /*<<< orphan*/  FUNC6 (char const**,char const* const,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static svn_error_t *
FUNC7(void *baton, const void *key, apr_ssize_t klen,
                               void *val, apr_pool_t *iterpool)
{
  struct verify_mergeinfo_normalization_baton *const vb = baton;

  const char *const path = key;
  const char *normpath;
  const char *found;

  FUNC0(FUNC6(&normpath, path, klen, &vb->buffer));
  found = FUNC4(vb->normalized_paths, normpath);
  if (!found)
      FUNC5(vb->normalized_paths,
                    FUNC2(vb->buffer.pool, normpath),
                    normalized_unique);
  else if (found == normalized_collision)
    /* Skip already reported collision */;
  else
    {
      /* Report path collision in mergeinfo */
      FUNC5(vb->normalized_paths,
                    FUNC2(vb->buffer.pool, normpath),
                    normalized_collision);

      FUNC3(iterpool, vb->notify_func, vb->notify_baton,
                     svn_repos_notify_warning_mergeinfo_collision,
                     FUNC1("Duplicate representation of path '%s'"
                       " in %s property of '%s'"),
                     normpath, SVN_PROP_MERGEINFO, vb->path);
    }
  return SVN_NO_ERROR;
}