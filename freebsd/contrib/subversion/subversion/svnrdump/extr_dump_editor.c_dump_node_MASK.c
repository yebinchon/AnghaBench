#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_repos__dumpfile_headers_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct file_baton {void* dump_props; } ;
struct dump_edit_baton {int /*<<< orphan*/  stream; scalar_t__ update_anchor_relpath; } ;
struct dir_baton {void* dump_props; } ;
typedef  enum svn_node_action { ____Placeholder_svn_node_action } svn_node_action ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_NODE_ACTION ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_NODE_COPYFROM_PATH ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_NODE_COPYFROM_REV ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_NODE_KIND ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_NODE_PATH ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
#define  svn_node_action_add 131 
#define  svn_node_action_change 130 
#define  svn_node_action_delete 129 
#define  svn_node_action_replace 128 
 int FUNC3 (char const*) ; 
 char* FUNC4 (scalar_t__,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(svn_repos__dumpfile_headers_t **headers_p,
          struct dump_edit_baton *eb,
          const char *repos_relpath,
          struct dir_baton *db,
          struct file_baton *fb,
          enum svn_node_action action,
          svn_boolean_t is_copy,
          const char *copyfrom_path,
          svn_revnum_t copyfrom_rev,
          apr_pool_t *pool)
{
  const char *node_relpath = repos_relpath;
  svn_repos__dumpfile_headers_t *headers
    = FUNC7(pool);

  FUNC1(FUNC3(repos_relpath));
  FUNC1(!copyfrom_path || FUNC3(copyfrom_path));
  FUNC1(! (db && fb));

  /* Add the edit root relpath prefix if necessary. */
  if (eb->update_anchor_relpath)
    node_relpath = FUNC4(eb->update_anchor_relpath,
                                    node_relpath, pool);

  /* Node-path: ... */
  FUNC5(
    headers, SVN_REPOS_DUMPFILE_NODE_PATH, node_relpath);

  /* Node-kind: "file" | "dir" */
  if (fb)
    FUNC5(
      headers, SVN_REPOS_DUMPFILE_NODE_KIND, "file");
  else if (db)
    FUNC5(
      headers, SVN_REPOS_DUMPFILE_NODE_KIND, "dir");


  /* Write the appropriate Node-action header */
  switch (action)
    {
    case svn_node_action_change:
      /* We are here after a change_file_prop or change_dir_prop. They
         set up whatever dump_props they needed to- nothing to
         do here but print node action information.

         Node-action: change.  */
      FUNC5(
        headers, SVN_REPOS_DUMPFILE_NODE_ACTION, "change");
      break;

    case svn_node_action_delete:
      /* Node-action: delete */
      FUNC5(
        headers, SVN_REPOS_DUMPFILE_NODE_ACTION, "delete");
      break;

    case svn_node_action_replace:
      if (! is_copy)
        {
          /* Node-action: replace */
          FUNC5(
            headers, SVN_REPOS_DUMPFILE_NODE_ACTION, "replace");

          /* Wait for a change_*_prop to be called before dumping
             anything */
          if (fb)
            fb->dump_props = TRUE;
          else if (db)
            db->dump_props = TRUE;
          break;
        }
      else
        {
          /* More complex case: is_copy is true, and copyfrom_path/
             copyfrom_rev are present: delete the original, and then re-add
             it */
          /* ### Why not write a 'replace' record? Don't know. */

          /* ### Unusually, we end this 'delete' node record with only a single
                 blank line after the header block -- no extra blank line. */
          FUNC0(FUNC2(eb->stream, repos_relpath, pool));

          /* The remaining action is a non-replacing add-with-history */
          /* action = svn_node_action_add; */
        }
      /* FALL THROUGH to 'add' */

    case svn_node_action_add:
      /* Node-action: add */
      FUNC5(
        headers, SVN_REPOS_DUMPFILE_NODE_ACTION, "add");

      if (is_copy)
        {
          /* Node-copyfrom-rev / Node-copyfrom-path */
          FUNC6(
            headers, SVN_REPOS_DUMPFILE_NODE_COPYFROM_REV, "%ld", copyfrom_rev);
          FUNC5(
            headers, SVN_REPOS_DUMPFILE_NODE_COPYFROM_PATH, copyfrom_path);
        }
      else
        {
          /* fb->dump_props (for files) is handled in close_file()
             which is called immediately.

             However, directories are not closed until all the work
             inside them has been done; db->dump_props (for directories)
             is handled (via dump_pending()) in all the functions that
             can possibly be called after add_directory():

               - add_directory()
               - open_directory()
               - delete_entry()
               - close_directory()
               - add_file()
               - open_file()

             change_dir_prop() is a special case. */
          if (fb)
            fb->dump_props = TRUE;
          else if (db)
            db->dump_props = TRUE;
        }

      break;
    }

  /* Return the headers so far. We don't necessarily have all the headers
     yet -- there may be property-related and content length headers to
     come, if this was not a 'delete' record. */
  *headers_p = headers;
  return SVN_NO_ERROR;
}