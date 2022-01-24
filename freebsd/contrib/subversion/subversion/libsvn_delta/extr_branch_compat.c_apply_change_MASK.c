#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_txdelta_window_handler_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_6__ {TYPE_5__* deditor; scalar_t__ repos_root_url; void* ev1_root_dir_baton; int /*<<< orphan*/  fetch_baton; int /*<<< orphan*/  fetch_func; int /*<<< orphan*/  changes; } ;
typedef  TYPE_1__ svn_branch__txn_priv_t ;
struct TYPE_7__ {scalar_t__ action; scalar_t__ kind; char* copyfrom_path; scalar_t__ contents_text; int /*<<< orphan*/  changing_rev; int /*<<< orphan*/  copyfrom_rev; int /*<<< orphan*/  deleting_rev; scalar_t__ deleting; } ;
typedef  TYPE_2__ change_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_8__ {int /*<<< orphan*/  (* close_file ) (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* apply_textdelta ) (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ;int /*<<< orphan*/  (* open_file ) (char const*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ;int /*<<< orphan*/  (* open_directory ) (char const*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ;int /*<<< orphan*/  (* add_file ) (char const*,void*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ;int /*<<< orphan*/  (* add_directory ) (char const*,void*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ;int /*<<< orphan*/  (* delete_entry ) (char const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* absent_file ) (char const*,void*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* absent_directory ) (char const*,void*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 scalar_t__ RESTRUCTURE_ADD ; 
 scalar_t__ RESTRUCTURE_ADD_ABSENT ; 
 scalar_t__ RESTRUCTURE_DELETE ; 
 scalar_t__ RESTRUCTURE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,TYPE_2__ const*,int /*<<< orphan*/ *,TYPE_5__*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char const*,void*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC12 (char const*,void*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC13 (char const*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC14 (char const*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC15 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 TYPE_2__* FUNC16 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_node_unknown ; 
 char* FUNC17 (scalar_t__,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC21(void **dir_baton,
             void *parent_baton,
             void *callback_baton,
             const char *ev1_relpath,
             apr_pool_t *result_pool)
{
  apr_pool_t *scratch_pool = result_pool;
  const svn_branch__txn_priv_t *eb = callback_baton;
  const change_node_t *change = FUNC16(eb->changes, ev1_relpath);
  void *file_baton = NULL;
  apr_hash_t *base_props;

  /* The callback should only be called for paths in CHANGES.  */
  FUNC1(change != NULL);

  /* Typically, we are not creating new directory batons.  */
  *dir_baton = NULL;

  FUNC0(FUNC5(&base_props, eb->changes, ev1_relpath,
                           eb->fetch_func, eb->fetch_baton,
                           scratch_pool, scratch_pool));

  /* Are we editing the root of the tree?  */
  if (parent_baton == NULL)
    {
      /* The root dir was already opened. */
      *dir_baton = eb->ev1_root_dir_baton;

      /* Only property edits are allowed on the root.  */
      FUNC1(change->action == RESTRUCTURE_NONE);
      FUNC0(FUNC4(ev1_relpath, change, base_props,
                              eb->deditor, *dir_baton, scratch_pool));

      /* No further action possible for the root.  */
      return SVN_NO_ERROR;
    }

  if (change->action == RESTRUCTURE_DELETE)
    {
      FUNC0(eb->deditor->delete_entry(ev1_relpath, change->deleting_rev,
                                        parent_baton, scratch_pool));

      /* No futher action possible for this node.  */
      return SVN_NO_ERROR;
    }

  /* If we're not deleting this node, then we should know its kind.  */
  FUNC1(change->kind != svn_node_unknown);

#ifdef SHIM_WITH_ADD_ABSENT
  if (change->action == RESTRUCTURE_ADD_ABSENT)
    {
      if (change->kind == svn_node_dir)
        SVN_ERR(eb->deditor->absent_directory(ev1_relpath, parent_baton,
                                              scratch_pool));
      else if (change->kind == svn_node_file)
        SVN_ERR(eb->deditor->absent_file(ev1_relpath, parent_baton,
                                         scratch_pool));
      else
        SVN_ERR_MALFUNCTION();

      /* No further action possible for this node.  */
      return SVN_NO_ERROR;
    }
#endif
  /* RESTRUCTURE_NONE or RESTRUCTURE_ADD  */

  if (change->action == RESTRUCTURE_ADD)
    {
      const char *copyfrom_url = NULL;
      svn_revnum_t copyfrom_rev = SVN_INVALID_REVNUM;

      /* Do we have an old node to delete first? If so, delete it. */
      if (change->deleting)
        FUNC0(eb->deditor->delete_entry(ev1_relpath, change->deleting_rev,
                                          parent_baton, scratch_pool));

      /* If it's a copy, determine the copy source location. */
      if (change->copyfrom_path)
        {
          /* ### What's this about URL vs. fspath? REPOS_ROOT_URL isn't
             optional, is it, at least in a commit editor? */
          if (eb->repos_root_url)
            copyfrom_url = FUNC17(eb->repos_root_url,
                                                       change->copyfrom_path,
                                                       scratch_pool);
          else
            {
              copyfrom_url = change->copyfrom_path;

              /* Make this an FS path by prepending "/" */
              if (copyfrom_url[0] != '/')
                copyfrom_url = FUNC3(scratch_pool, "/",
                                           copyfrom_url, SVN_VA_NULL);
            }

          copyfrom_rev = change->copyfrom_rev;
        }

      if (change->kind == svn_node_dir)
        FUNC0(eb->deditor->add_directory(ev1_relpath, parent_baton,
                                           copyfrom_url, copyfrom_rev,
                                           result_pool, dir_baton));
      else if (change->kind == svn_node_file)
        FUNC0(eb->deditor->add_file(ev1_relpath, parent_baton,
                                      copyfrom_url, copyfrom_rev,
                                      result_pool, &file_baton));
      else
        FUNC2();
    }
  else /* RESTRUCTURE_NONE */
    {
      /* ### The code that inserts a "plain edit" change record sets
         'changing_rev' to the peg rev of the pegged part of the path,
         even when the full path refers to a child of a copy. Should we
         instead be using the copy source rev here, in that case? (Like
         when we fetch the base properties.) */

      if (change->kind == svn_node_dir)
        FUNC0(eb->deditor->open_directory(ev1_relpath, parent_baton,
                                            change->changing_rev,
                                            result_pool, dir_baton));
      else if (change->kind == svn_node_file)
        FUNC0(eb->deditor->open_file(ev1_relpath, parent_baton,
                                       change->changing_rev,
                                       result_pool, &file_baton));
      else
        FUNC2();
    }

  /* Apply any properties in CHANGE to the node.  */
  if (change->kind == svn_node_dir)
    FUNC0(FUNC4(ev1_relpath, change, base_props,
                            eb->deditor, *dir_baton, scratch_pool));
  else
    FUNC0(FUNC4(ev1_relpath, change, base_props,
                            eb->deditor, file_baton, scratch_pool));

  /* Send the text content delta, if new text content is provided. */
  if (change->contents_text)
    {
      svn_stream_t *read_stream;
      svn_txdelta_window_handler_t handler;
      void *handler_baton;

      read_stream = FUNC19(change->contents_text,
                                              scratch_pool);
      /* ### would be nice to have a BASE_CHECKSUM, but hey: this is the
         ### shim code...  */
      FUNC0(eb->deditor->apply_textdelta(file_baton, NULL, scratch_pool,
                                           &handler, &handler_baton));
      /* ### it would be nice to send a true txdelta here, but whatever.  */
      FUNC0(FUNC20(read_stream, handler, handler_baton,
                                      NULL, scratch_pool));
      FUNC0(FUNC18(read_stream));
    }

  if (file_baton)
    {
      FUNC0(eb->deditor->close_file(file_baton, NULL, scratch_pool));
    }

  return SVN_NO_ERROR;
}