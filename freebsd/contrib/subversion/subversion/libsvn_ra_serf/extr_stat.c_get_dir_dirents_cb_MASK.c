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
struct get_dir_baton_t {scalar_t__ is_directory; int /*<<< orphan*/  supports_deadprop_count; int /*<<< orphan*/  result_pool; int /*<<< orphan*/  dirents; int /*<<< orphan*/  path; } ;
struct fill_dirent_baton_t {int /*<<< orphan*/ * supports_deadprop_count; int /*<<< orphan*/  result_pool; scalar_t__ entry; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_DIRECTORY ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct fill_dirent_baton_t*,char const*,char const*,char const*,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC10 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC11(void *baton,
                   const char *path,
                   const char *ns,
                   const char *name,
                   const svn_string_t *value,
                   apr_pool_t *scratch_pool)
{
  struct get_dir_baton_t *db = baton;
  const char *relpath;

  relpath = FUNC7(db->path, path);

  if (relpath && relpath[0] != '\0')
    {
      struct fill_dirent_baton_t fdb;

      relpath = FUNC10(relpath, scratch_pool);
      fdb.entry = FUNC8(db->dirents, relpath);

      if (!fdb.entry)
        {
          fdb.entry = FUNC5(db->result_pool);
          FUNC9(db->dirents,
                        FUNC2(db->result_pool, relpath),
                        fdb.entry);
        }

      fdb.result_pool = db->result_pool;
      fdb.supports_deadprop_count = &db->supports_deadprop_count;
      FUNC0(FUNC3(&fdb, path, ns, name, value, scratch_pool));
    }
  else if (relpath && !db->is_directory)
    {
      if (FUNC4(ns, "DAV:") == 0 && FUNC4(name, "resourcetype") == 0)
        {
          if (FUNC4(value->data, "collection") != 0)
            {
              /* Tell a lie to exit early */
              return FUNC6(SVN_ERR_FS_NOT_DIRECTORY, NULL,
                                      FUNC1("Can't get properties of non-directory"));
            }
          else
            db->is_directory = TRUE;
        }
    }

  return SVN_NO_ERROR;
}