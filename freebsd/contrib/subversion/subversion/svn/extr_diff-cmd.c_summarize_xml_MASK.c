#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_9__ {scalar_t__ summarize_kind; int /*<<< orphan*/  node_kind; scalar_t__ prop_changed; int /*<<< orphan*/  path; } ;
typedef  TYPE_2__ svn_client_diff_summarize_t ;
struct summarize_baton_t {char* anchor; scalar_t__ ignore_properties; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ svn_client_diff_summarize_kind_normal ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*) ; 
 char* FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__**,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_xml_protect_pcdata ; 

__attribute__((used)) static svn_error_t *
FUNC11(const svn_client_diff_summarize_t *summary,
              void *baton,
              apr_pool_t *pool)
{
  struct summarize_baton_t *b = baton;
  /* Full path to the object being diffed.  This is created by taking the
   * baton, and appending the target's relative path. */
  const char *path = b->anchor;
  svn_stringbuf_t *sb = FUNC7(pool);
  const char *prop_change;

  if (b->ignore_properties &&
      summary->summarize_kind == svn_client_diff_summarize_kind_normal)
    return SVN_NO_ERROR;

  /* Tack on the target path, so we can differentiate between different parts
   * of the output when we're given multiple targets. */
  if (FUNC5(path))
    {
      path = FUNC6(path, summary->path, pool);
    }
  else
    {
      path = FUNC3(path, summary->path, pool);

      /* Convert non-urls to local style, so that things like ""
         show up as "." */
      path = FUNC4(path, pool);
    }

  prop_change = summary->prop_changed ? "modified" : "none";
  if (b->ignore_properties)
    prop_change = "none";

  FUNC10(&sb, pool, svn_xml_protect_pcdata, "path",
                        "kind", FUNC2(summary->node_kind),
                        "item", FUNC0(summary->summarize_kind),
                        "props",  prop_change,
                        SVN_VA_NULL);

  FUNC8(&sb, path, pool);
  FUNC9(&sb, pool, "path");

  return FUNC1(sb->data, stdout);
}