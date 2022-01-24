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
struct TYPE_4__ {char const* data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct get_dir_baton_t {scalar_t__ is_directory; int /*<<< orphan*/  result_pool; int /*<<< orphan*/  ret_props; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_FS_NOT_DIRECTORY ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC6(void *baton,
                 const char *path,
                 const char *ns,
                 const char *name,
                 const svn_string_t *value,
                 apr_pool_t *scratch_pool)
{
  struct get_dir_baton_t *db = baton;
  const char *propname;

  propname = FUNC4(ns, name, db->result_pool);
  if (propname)
    {
      FUNC3(db->ret_props, propname,
                    FUNC5(value, db->result_pool));
      return SVN_NO_ERROR;
    }

  if (!db->is_directory)
    {
      if (FUNC1(ns, "DAV:") == 0 && FUNC1(name, "resourcetype") == 0)
        {
          if (FUNC1(value->data, "collection") != 0)
            {
              /* Tell a lie to exit early */
              return FUNC2(SVN_ERR_FS_NOT_DIRECTORY, NULL,
                                      FUNC0("Can't get properties of non-directory"));
            }
          else
            db->is_directory = TRUE;
        }
    }

  return SVN_NO_ERROR;
}