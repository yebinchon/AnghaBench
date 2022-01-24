#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct file_prop_baton_t {int /*<<< orphan*/  result_pool; int /*<<< orphan*/  props; int /*<<< orphan*/  sha1_checksum; int /*<<< orphan*/  kind; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 char* SVN_DAV_PROP_NS_DAV ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_node_dir ; 
 int /*<<< orphan*/  svn_node_file ; 
 char* FUNC3 (char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC5(void *baton,
                 const char *path,
                 const char *ns,
                 const char *name,
                 const svn_string_t *value,
                 apr_pool_t *scratch_pool)
{
  struct file_prop_baton_t *fb = baton;
  const char *svn_name;

  if (FUNC1(ns, "DAV:") == 0 && FUNC1(name, "resourcetype") == 0)
    {
      const char *val = value->data;

      if (FUNC1(val, "collection") == 0)
        fb->kind = svn_node_dir;
      else
        fb->kind = svn_node_file;

      return SVN_NO_ERROR;
    }
  else if (FUNC1(ns, SVN_DAV_PROP_NS_DAV) == 0
           && FUNC1(name, "sha1-checksum") == 0)
    {
      fb->sha1_checksum = FUNC0(fb->result_pool, value->data);
    }

  if (!fb->props)
    return SVN_NO_ERROR;

  svn_name = FUNC3(ns, name, fb->result_pool);
  if (svn_name)
    {
      FUNC2(fb->props, svn_name,
                    FUNC4(value, fb->result_pool));
    }
  return SVN_NO_ERROR;
}