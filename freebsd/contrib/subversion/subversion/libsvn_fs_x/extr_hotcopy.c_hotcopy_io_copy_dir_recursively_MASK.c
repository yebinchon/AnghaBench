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
 scalar_t__ APR_REG ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ APR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SVN_ERR_NODE_UNEXPECTED_KIND ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const**,char*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char const*,char const*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char const*,char const*) ; 
 char* FUNC8 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC18(svn_boolean_t *skipped_p,
                                const char *src,
                                const char *dst_parent,
                                const char *dst_basename,
                                svn_boolean_t copy_perms,
                                svn_cancel_func_t cancel_func,
                                void *cancel_baton,
                                apr_pool_t *scratch_pool)
{
  svn_node_kind_t kind;
  apr_status_t status;
  const char *dst_path;
  apr_dir_t *this_dir;
  apr_finfo_t this_entry;
  apr_int32_t flags = APR_FINFO_TYPE | APR_FINFO_NAME;

  /* Make a subpool for recursion */
  apr_pool_t *subpool = FUNC16(scratch_pool);

  /* The 'dst_path' is simply dst_parent/dst_basename */
  dst_path = FUNC8(dst_parent, dst_basename, scratch_pool);

  /* Sanity checks:  SRC and DST_PARENT are directories, and
     DST_BASENAME doesn't already exist in DST_PARENT. */
  FUNC1(FUNC12(src, &kind, subpool));
  if (kind != svn_node_dir)
    return FUNC10(SVN_ERR_NODE_UNEXPECTED_KIND, NULL,
                             FUNC2("Source '%s' is not a directory"),
                             FUNC9(src, scratch_pool));

  FUNC1(FUNC12(dst_parent, &kind, subpool));
  if (kind != svn_node_dir)
    return FUNC10(SVN_ERR_NODE_UNEXPECTED_KIND, NULL,
                             FUNC2("Destination '%s' is not a directory"),
                             FUNC9(dst_parent,
                                                    scratch_pool));

  FUNC1(FUNC12(dst_path, &kind, subpool));

  /* Create the new directory. */
  /* ### TODO: copy permissions (needs apr_file_attrs_get()) */
  FUNC1(FUNC15(dst_path, scratch_pool));

  /* Loop over the dirents in SRC.  ('.' and '..' are auto-excluded) */
  FUNC1(FUNC14(&this_dir, src, subpool));

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
          const char *entryname_utf8;

          if (cancel_func)
            FUNC1(cancel_func(cancel_baton));

          FUNC1(FUNC5(&entryname_utf8, this_entry.name,
                                     src, subpool));
          if (this_entry.filetype == APR_REG) /* regular file */
            {
              FUNC1(FUNC6(skipped_p, src, dst_path,
                                               entryname_utf8, subpool));
            }
          else if (this_entry.filetype == APR_LNK) /* symlink */
            {
              const char *src_target = FUNC8(src, entryname_utf8,
                                                       subpool);
              const char *dst_target = FUNC8(dst_path,
                                                       entryname_utf8,
                                                       subpool);
              FUNC1(FUNC13(src_target, dst_target,
                                       subpool));
            }
          else if (this_entry.filetype == APR_DIR) /* recurse */
            {
              const char *src_target;

              /* Prevent infinite recursion by filtering off our
                 newly created destination path. */
              if (FUNC7(src, dst_parent) == 0
                  && FUNC7(entryname_utf8, dst_basename) == 0)
                continue;

              src_target = FUNC8(src, entryname_utf8, subpool);
              FUNC1(FUNC18(skipped_p,
                                                      src_target,
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
    return FUNC11(status, FUNC2("Can't read directory '%s'"),
                              FUNC9(src, scratch_pool));

  status = FUNC3(this_dir);
  if (status)
    return FUNC11(status, FUNC2("Error closing directory '%s'"),
                              FUNC9(src, scratch_pool));

  /* Free any memory used by recursion */
  FUNC17(subpool);

  return SVN_NO_ERROR;
}