#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ kind; } ;
typedef  TYPE_1__ svn_wc_entry_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  scalar_t__ svn_node_kind_t ;
struct TYPE_14__ {scalar_t__ apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ SVN_ERR_NODE_UNEXPECTED_KIND ; 
 scalar_t__ SVN_ERR_WC_MISSING ; 
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ; 
 TYPE_2__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char const**,char const**,int /*<<< orphan*/ *,char const*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (TYPE_1__ const**,TYPE_1__ const**,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 TYPE_2__* FUNC7 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (TYPE_2__*) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_node_unknown ; 

svn_error_t *
FUNC9(const svn_wc_entry_t **entry,
                  svn_wc__db_t *db,
                  const char *local_abspath,
                  svn_boolean_t allow_unversioned,
                  svn_node_kind_t kind,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  const char *dir_abspath;
  const char *entry_name;

  FUNC0(FUNC3(&dir_abspath, &entry_name, db, local_abspath,
                                kind, scratch_pool, scratch_pool));

    {
      const svn_wc_entry_t *parent_entry;
      svn_error_t *err;

      /* NOTE: if KIND is UNKNOWN and we decided to examine the *parent*
         directory, then it is possible we moved out of the working copy.
         If the on-disk node is a DIR, and we asked for a stub, then we
         obviously can't provide that (parent has no info). If the on-disk
         node is a FILE/NONE/UNKNOWN, then it is obstructing the real
         LOCAL_ABSPATH (or it was never a versioned item). In all these
         cases, the read_entries() will (properly) throw an error.

         NOTE: if KIND is a DIR and we asked for the real data, but it is
         obstructed on-disk by some other node kind (NONE, FILE, UNKNOWN),
         then this will throw an error.  */

      err = FUNC4(&parent_entry, entry,
                            db, dir_abspath, entry_name,
                            result_pool, scratch_pool);
      if (err)
        {
          if (err->apr_err != SVN_ERR_WC_MISSING || kind != svn_node_unknown
              || *entry_name != '\0')
            return FUNC8(err);
          FUNC6(err);

          /* The caller didn't know the node type, we saw a directory there,
             we attempted to read IN that directory, and then wc_db reports
             that it is NOT a working copy directory. It is possible that
             one of two things has happened:

             1) a directory is obstructing a file in the parent
             2) the (versioned) directory's contents have been removed

             Let's assume situation (1); if that is true, then we can just
             return the newly-found data.

             If we assumed (2), then a valid result still won't help us
             since the caller asked for the actual contents, not the stub
             (which is why we read *into* the directory). However, if we
             assume (1) and get back a stub, then we have verified a
             missing, versioned directory, and can return an error
             describing that.

             Redo the fetch, but "insist" we are trying to find a file.
             This will read from the parent directory of the "file".  */
          err = FUNC9(entry, db, local_abspath, allow_unversioned,
                                  svn_node_file, result_pool, scratch_pool);
          if (err == SVN_NO_ERROR)
            return SVN_NO_ERROR;
          if (err->apr_err != SVN_ERR_NODE_UNEXPECTED_KIND)
            return FUNC8(err);
          FUNC6(err);

          /* We asked for a FILE, but the node found is a DIR. Thus, we
             are looking at a stub. Originally, we tried to read into the
             subdir because NEED_PARENT_STUB is FALSE. The stub we just
             read is not going to work for the caller, so inform them of
             the missing subdirectory.  */
          FUNC1(*entry != NULL && (*entry)->kind == svn_node_dir);
          return FUNC7(SVN_ERR_WC_PATH_NOT_FOUND, NULL,
                                 FUNC2("Admin area of '%s' is missing"),
                                 FUNC5(local_abspath,
                                                        scratch_pool));
        }
    }

  if (*entry == NULL)
    {
      if (allow_unversioned)
        return SVN_NO_ERROR;
      return FUNC7(SVN_ERR_WC_PATH_NOT_FOUND, NULL,
                               FUNC2("'%s' is not under version control"),
                               FUNC5(local_abspath,
                                                      scratch_pool));
    }

  /* The caller had the wrong information.  */
  if ((kind == svn_node_file && (*entry)->kind != svn_node_file)
      || (kind == svn_node_dir && (*entry)->kind != svn_node_dir))
    return FUNC7(SVN_ERR_NODE_UNEXPECTED_KIND, NULL,
                             FUNC2("'%s' is not of the right kind"),
                             FUNC5(local_abspath,
                                                    scratch_pool));

  return SVN_NO_ERROR;
}