#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_1__ trail_t ;
struct TYPE_17__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ svn_string_t ;
struct TYPE_18__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_3__ svn_fs_t ;
typedef  int /*<<< orphan*/  const svn_fs_id_t ;
struct TYPE_19__ {scalar_t__ apr_err; } ;
typedef  TYPE_4__ svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  SVN_ERR_FS_ALREADY_EXISTS ; 
 scalar_t__ SVN_ERR_FS_ID_NOT_FOUND ; 
 TYPE_4__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char const* FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC5 (int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC8 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/  const*,TYPE_1__*,int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC9(svn_fs_id_t **successor_p,
                             svn_fs_t *fs,
                             const svn_fs_id_t *id,
                             const char *copy_id,
                             const char *txn_id,
                             trail_t *trail,
                             apr_pool_t *pool)
{
  svn_fs_id_t *new_id;
  svn_error_t *err;

  FUNC0(txn_id);

  /* Create and return the new successor ID.  */
  new_id = FUNC5(FUNC6(id),
                                  copy_id ? copy_id
                                  : FUNC4(id),
                                  txn_id, pool);

  /* Now, make sure this NEW_ID doesn't already exist in FS. */
  err = FUNC8(NULL, fs, new_id, trail, trail->pool);
  if ((! err) || (err->apr_err != SVN_ERR_FS_ID_NOT_FOUND))
    {
      svn_string_t *id_str = FUNC7(id, pool);
      svn_string_t *new_id_str = FUNC7(new_id, pool);
      return FUNC3
        (SVN_ERR_FS_ALREADY_EXISTS, err,
         FUNC1("Successor id '%s' (for '%s') already exists in filesystem '%s'"),
         new_id_str->data, id_str->data, fs->path);
    }

  /* err is SVN_ERR_FS_ID_NOT_FOUND, meaning the ID is available. But
     we don't want this error. */
  FUNC2(err);

  /* Return the new node revision ID. */
  *successor_p = new_id;
  return SVN_NO_ERROR;
}