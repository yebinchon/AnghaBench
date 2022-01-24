#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/ * (* svn_cancel_func_t ) (void*) ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int apr_int32_t ;
struct TYPE_3__ {char* name; scalar_t__ filetype; } ;
typedef  TYPE_1__ apr_finfo_t ;
typedef  int /*<<< orphan*/  apr_dir_t ;

/* Variables and functions */
 scalar_t__ APR_DIR ; 
 int APR_FINFO_NAME ; 
 int APR_FINFO_TYPE ; 
 scalar_t__ APR_LNK ; 
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 scalar_t__ APR_REG ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ APR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SVN_ERR_ENTRY_EXISTS ; 
 int /*<<< orphan*/  SVN_ERR_NODE_UNEXPECTED_KIND ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const**,char*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char const*,char const*) ; 
 char* FUNC7 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_none ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

svn_error_t *FUNC18(const char *src,
                                         const char *dst_parent,
                                         const char *dst_basename,
                                         svn_boolean_t copy_perms,
                                         svn_cancel_func_t cancel_func,
                                         void *cancel_baton,
                                         apr_pool_t *pool)
{
  svn_node_kind_t kind;
  apr_status_t status;
  const char *dst_path;
  apr_dir_t *this_dir;
  apr_finfo_t this_entry;
  apr_int32_t flags = APR_FINFO_TYPE | APR_FINFO_NAME;

  /* Make a subpool for recursion */
  apr_pool_t *subpool = FUNC16(pool);

  /* The 'dst_path' is simply dst_parent/dst_basename */
  dst_path = FUNC7(dst_parent, dst_basename, pool);

  /* Sanity checks:  SRC and DST_PARENT are directories, and
     DST_BASENAME doesn't already exist in DST_PARENT. */
  FUNC1(FUNC11(src, &kind, subpool));
  if (kind != svn_node_dir)
    return FUNC9(SVN_ERR_NODE_UNEXPECTED_KIND, NULL,
                             FUNC2("Source '%s' is not a directory"),
                             FUNC8(src, pool));

  FUNC1(FUNC11(dst_parent, &kind, subpool));
  if (kind != svn_node_dir)
    return FUNC9(SVN_ERR_NODE_UNEXPECTED_KIND, NULL,
                             FUNC2("Destination '%s' is not a directory"),
                             FUNC8(dst_parent, pool));

  FUNC1(FUNC11(dst_path, &kind, subpool));
  if (kind != svn_node_none)
    return FUNC9(SVN_ERR_ENTRY_EXISTS, NULL,
                             FUNC2("Destination '%s' already exists"),
                             FUNC8(dst_path, pool));

  /* Create the new directory. */
  /* ### TODO: copy permissions (needs apr_file_attrs_get()) */
  FUNC1(FUNC14(dst_path, APR_OS_DEFAULT, pool));

  /* Loop over the dirents in SRC.  ('.' and '..' are auto-excluded) */
  FUNC1(FUNC15(&this_dir, src, subpool));

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
          const char *src_target, *entryname_utf8;

          if (cancel_func)
            FUNC1(cancel_func(cancel_baton));

          FUNC1(FUNC5(&entryname_utf8, this_entry.name,
                                     src, subpool));
          src_target = FUNC7(src, entryname_utf8, subpool);

          if (this_entry.filetype == APR_REG) /* regular file */
            {
              const char *dst_target = FUNC7(dst_path,
                                                       entryname_utf8,
                                                       subpool);
              FUNC1(FUNC12(src_target, dst_target,
                                       copy_perms, subpool));
            }
          else if (this_entry.filetype == APR_LNK) /* symlink */
            {
              const char *dst_target = FUNC7(dst_path,
                                                       entryname_utf8,
                                                       subpool);
              FUNC1(FUNC13(src_target, dst_target,
                                       subpool));
            }
          else if (this_entry.filetype == APR_DIR) /* recurse */
            {
              /* Prevent infinite recursion by filtering off our
                 newly created destination path. */
              if (FUNC6(src, dst_parent) == 0
                  && FUNC6(entryname_utf8, dst_basename) == 0)
                continue;

              FUNC1(FUNC18
                      (src_target,
                       dst_path,
                       entryname_utf8,
                       copy_perms,
                       cancel_func,
                       cancel_baton,
                       subpool));
            }
          /* ### support other APR node types someday?? */

        }
    }

  if (! (FUNC0(status)))
    return FUNC10(status, FUNC2("Can't read directory '%s'"),
                              FUNC8(src, pool));

  status = FUNC3(this_dir);
  if (status)
    return FUNC10(status, FUNC2("Error closing directory '%s'"),
                              FUNC8(src, pool));

  /* Free any memory used by recursion */
  FUNC17(subpool);

  return SVN_NO_ERROR;
}