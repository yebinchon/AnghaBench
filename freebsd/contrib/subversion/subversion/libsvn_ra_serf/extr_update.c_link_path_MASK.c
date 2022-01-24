#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_9__ {char const* update_target; int /*<<< orphan*/  switched_paths; int /*<<< orphan*/  pool; int /*<<< orphan*/  body_template; int /*<<< orphan*/  sess; } ;
typedef  TYPE_2__ report_context_t ;
struct TYPE_10__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_3__ apr_uri_t ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * APR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_RA_DAV_MALFORMED_DATA ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char const*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__**,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,char*,char const*,char*,int /*<<< orphan*/ ,char*,char const*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_xml_protect_pcdata ; 

__attribute__((used)) static svn_error_t *
FUNC15(void *report_baton,
          const char *path,
          const char *url,
          svn_revnum_t revision,
          svn_depth_t depth,
          svn_boolean_t start_empty,
          const char *lock_token,
          apr_pool_t *pool)
{
  report_context_t *report = report_baton;
  const char *link, *report_target;
  apr_uri_t uri;
  apr_status_t status;
  svn_stringbuf_t *buf = NULL;

  /* We need to pass in the baseline relative path.
   *
   * TODO Confirm that it's on the same server?
   */
  status = FUNC5(pool, url, &uri);
  if (status)
    {
      return FUNC7(SVN_ERR_RA_DAV_MALFORMED_DATA, NULL,
                               FUNC1("Unable to parse URL '%s'"), url);
    }

  FUNC0(FUNC10(&report_target, report->sess, pool));
  FUNC0(FUNC9(&link, uri.path, report->sess, pool));

  link = FUNC3(pool, "/", link, SVN_VA_NULL);

  FUNC14(&buf, pool, svn_xml_protect_pcdata, "S:entry",
                        "rev", FUNC2(pool, revision),
                        "lock-token", lock_token,
                        "depth", FUNC6(depth),
                        "linkpath", link,
                        "start-empty", start_empty ? "true" : NULL,
                        SVN_VA_NULL);
  FUNC12(&buf, path, pool);
  FUNC13(&buf, pool, "S:entry");

  FUNC0(FUNC11(report->body_template, buf->data, &buf->len));

  /* Store the switch roots to allow generating repos_relpaths from just
     the working copy paths. (Needed for HTTPv2) */
  path = FUNC4(report->pool, path);
  link = FUNC4(report->pool, link + 1);
  FUNC8(report->switched_paths, path, link);

  if (!path[0] && report->update_target[0])
    {
      /* The update root is switched. Make sure we store it the way
         we expect it to find */
      FUNC8(report->switched_paths, report->update_target, link);
    }

  return APR_SUCCESS;
}