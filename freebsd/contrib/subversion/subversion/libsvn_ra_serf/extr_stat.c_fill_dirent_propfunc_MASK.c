#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char const* data; scalar_t__ len; } ;
typedef  TYPE_2__ svn_string_t ;
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct fill_dirent_baton_t {int /*<<< orphan*/ * supports_deadprop_count; TYPE_1__* entry; int /*<<< orphan*/  result_pool; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_int64_t ;
struct TYPE_4__ {scalar_t__ size; int has_props; int /*<<< orphan*/  kind; int /*<<< orphan*/  time; int /*<<< orphan*/  last_author; scalar_t__ created_rev; } ;

/* Variables and functions */
 char* SVN_DAV_PROP_NS_CUSTOM ; 
 char* SVN_DAV_PROP_NS_DAV ; 
 char* SVN_DAV_PROP_NS_SVN ; 
 char* SVN_DAV__CREATIONDATE ; 
 char* SVN_DAV__VERSION_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,char const*) ; 
 int /*<<< orphan*/  svn_node_dir ; 
 int /*<<< orphan*/  svn_node_file ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_tristate_false ; 
 int /*<<< orphan*/  svn_tristate_true ; 

__attribute__((used)) static svn_error_t *
FUNC5(void *baton,
                     const char *path,
                     const char *ns,
                     const char *name,
                     const svn_string_t *val,
                     apr_pool_t *scratch_pool)
{
  struct fill_dirent_baton_t *fdb = baton;

  if (FUNC2(ns, "DAV:") == 0)
    {
      if (FUNC2(name, SVN_DAV__VERSION_NAME) == 0)
        {
          apr_int64_t rev;
          FUNC0(FUNC3(&rev, val->data));

          fdb->entry->created_rev = (svn_revnum_t)rev;
        }
      else if (FUNC2(name, "creator-displayname") == 0)
        {
          fdb->entry->last_author = FUNC1(fdb->result_pool, val->data);
        }
      else if (FUNC2(name, SVN_DAV__CREATIONDATE) == 0)
        {
          FUNC0(FUNC4(&fdb->entry->time,
                                        val->data,
                                        fdb->result_pool));
        }
      else if (FUNC2(name, "getcontentlength") == 0)
        {
          /* 'getcontentlength' property is empty for directories. */
          if (val->len)
            {
              FUNC0(FUNC3(&fdb->entry->size, val->data));
            }
        }
      else if (FUNC2(name, "resourcetype") == 0)
        {
          if (FUNC2(val->data, "collection") == 0)
            {
              fdb->entry->kind = svn_node_dir;
            }
          else
            {
              fdb->entry->kind = svn_node_file;
            }
        }
    }
  else if (FUNC2(ns, SVN_DAV_PROP_NS_CUSTOM) == 0)
    {
      fdb->entry->has_props = TRUE;
    }
  else if (FUNC2(ns, SVN_DAV_PROP_NS_SVN) == 0)
    {
      fdb->entry->has_props = TRUE;
    }
  else if (FUNC2(ns, SVN_DAV_PROP_NS_DAV) == 0)
    {
      if(FUNC2(name, "deadprop-count") == 0)
        {
          if (*val->data)
            {
              /* Note: 1.8.x and earlier servers send the count proper; 1.9.0
               * and newer send "1" if there are properties and "0" otherwise.
               */
              apr_int64_t deadprop_count;
              FUNC0(FUNC3(&deadprop_count, val->data));
              fdb->entry->has_props = deadprop_count > 0;
              if (fdb->supports_deadprop_count)
                *fdb->supports_deadprop_count = svn_tristate_true;
            }
          else if (fdb->supports_deadprop_count)
            *fdb->supports_deadprop_count = svn_tristate_false;
        }
    }

  return SVN_NO_ERROR;
}