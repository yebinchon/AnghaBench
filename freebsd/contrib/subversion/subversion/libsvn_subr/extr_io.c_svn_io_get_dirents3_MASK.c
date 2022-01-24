#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  mtime; int /*<<< orphan*/  filesize; int /*<<< orphan*/  special; int /*<<< orphan*/  kind; } ;
typedef  TYPE_1__ svn_io_dirent2_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int apr_int32_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_8__ {char* name; int /*<<< orphan*/  mtime; int /*<<< orphan*/  size; } ;
typedef  TYPE_2__ apr_finfo_t ;
typedef  int /*<<< orphan*/  apr_dir_t ;

/* Variables and functions */
 int APR_FINFO_MTIME ; 
 int APR_FINFO_NAME ; 
 int APR_FINFO_SIZE ; 
 int APR_FINFO_TYPE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ APR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const**,char*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC13(apr_hash_t **dirents,
                    const char *path,
                    svn_boolean_t only_check_type,
                    apr_pool_t *result_pool,
                    apr_pool_t *scratch_pool)
{
  apr_status_t status;
  apr_dir_t *this_dir;
  apr_finfo_t this_entry;
  apr_int32_t flags = APR_FINFO_TYPE | APR_FINFO_NAME;

  if (!only_check_type)
    flags |= APR_FINFO_SIZE | APR_FINFO_MTIME;

  *dirents = FUNC5(result_pool);

  FUNC1(FUNC11(&this_dir, path, scratch_pool));

  for (status = FUNC4(&this_entry, flags, this_dir);
       status == APR_SUCCESS;
       status = FUNC4(&this_entry, flags, this_dir))
    {
      if ((this_entry.name[0] == '.')
          && ((this_entry.name[1] == '\0')
              || ((this_entry.name[1] == '.')
                  && (this_entry.name[2] == '\0'))))
        {
          continue;
        }
      else
        {
          const char *name;
          svn_io_dirent2_t *dirent = FUNC12(result_pool);

          FUNC1(FUNC6(&name, this_entry.name, path, result_pool));

          FUNC7(&(dirent->kind),
                                     &(dirent->special),
                                     &this_entry);

          if (!only_check_type)
            {
              dirent->filesize = this_entry.size;
              dirent->mtime = this_entry.mtime;
            }

          FUNC10(*dirents, name, dirent);
        }
    }

  if (! (FUNC0(status)))
    return FUNC9(status, FUNC2("Can't read directory '%s'"),
                              FUNC8(path, scratch_pool));

  status = FUNC3(this_dir);
  if (status)
    return FUNC9(status, FUNC2("Error closing directory '%s'"),
                              FUNC8(path, scratch_pool));

  return SVN_NO_ERROR;
}