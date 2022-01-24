#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  work_item_baton_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  scalar_t__ svn_wc__db_status_t ;
typedef  int /*<<< orphan*/  svn_wc__db_lock_t ;
typedef  int /*<<< orphan*/  svn_subst_eol_style_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
struct TYPE_6__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; struct TYPE_6__* next; TYPE_1__* children; } ;
typedef  TYPE_2__ svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int svn_boolean_t ;
typedef  scalar_t__ apr_time_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_int64_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_5__ {TYPE_2__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_CORRUPT_TEXT_BASE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_EXECUTABLE ; 
 int /*<<< orphan*/  SVN_PROP_NEEDS_LOCK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char const**,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (char const**,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (char const**,int /*<<< orphan*/  const**,int /*<<< orphan*/ **,scalar_t__*,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_added ; 
 int /*<<< orphan*/  FUNC22 (char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC24(work_item_baton_t *wqb,
                 svn_wc__db_t *db,
                 const svn_skel_t *work_item,
                 const char *wri_abspath,
                 svn_cancel_func_t cancel_func,
                 void *cancel_baton,
                 apr_pool_t *scratch_pool)
{
  const svn_skel_t *arg1 = work_item->children->next;
  const svn_skel_t *arg4 = arg1->next->next->next;
  const char *local_relpath;
  const char *local_abspath;
  svn_boolean_t use_commit_times;
  svn_boolean_t record_fileinfo;
  svn_boolean_t special;
  svn_stream_t *src_stream;
  svn_subst_eol_style_t style;
  const char *eol;
  apr_hash_t *keywords;
  const char *temp_dir_abspath;
  svn_stream_t *dst_stream;
  apr_int64_t val;
  const char *wcroot_abspath;
  const char *source_abspath;
  const svn_checksum_t *checksum;
  apr_hash_t *props;
  apr_time_t changed_date;

  local_relpath = FUNC2(scratch_pool, arg1->data, arg1->len);
  FUNC0(FUNC18(&local_abspath, db, wri_abspath,
                                  local_relpath, scratch_pool, scratch_pool));

  FUNC0(FUNC10(&val, arg1->next, scratch_pool));
  use_commit_times = (val != 0);
  FUNC0(FUNC10(&val, arg1->next->next, scratch_pool));
  record_fileinfo = (val != 0);

  FUNC0(FUNC21(&wcroot_abspath,
                                            &checksum, &props,
                                            &changed_date,
                                            db, local_abspath, wri_abspath,
                                            scratch_pool, scratch_pool));

  if (arg4 != NULL)
    {
      /* Use the provided path for the source.  */
      local_relpath = FUNC2(scratch_pool, arg4->data, arg4->len);
      FUNC0(FUNC18(&source_abspath, db, wri_abspath,
                                      local_relpath,
                                      scratch_pool, scratch_pool));
    }
  else if (! checksum)
    {
      /* This error replaces a previous assertion. Reporting an error from here
         leaves the workingqueue operation in place, so the working copy is
         still broken!

         But when we report this error the user at least knows what node has
         this specific problem, so maybe we can find out why users see this
         error */
      return FUNC5(SVN_ERR_WC_CORRUPT_TEXT_BASE, NULL,
                               FUNC1("Can't install '%s' from pristine store, "
                                 "because no checksum is recorded for this "
                                 "file"),
                               FUNC4(local_abspath,
                                                      scratch_pool));
    }
  else
    {
      FUNC0(FUNC19(&source_abspath,
                                                  wcroot_abspath,
                                                  checksum,
                                                  scratch_pool, scratch_pool));
    }

  FUNC0(FUNC14(&src_stream, source_abspath,
                                   scratch_pool, scratch_pool));

  /* Fetch all the translation bits.  */
  FUNC0(FUNC23(&style, &eol,
                                     &keywords,
                                     &special, db, local_abspath,
                                     props, FALSE,
                                     scratch_pool, scratch_pool));
  if (special)
    {
      /* When this stream is closed, the resulting special file will
         atomically be created/moved into place at LOCAL_ABSPATH.  */
      FUNC0(FUNC15(&dst_stream, local_abspath,
                                           scratch_pool, scratch_pool));

      /* Copy the "repository normal" form of the special file into the
         special stream.  */
      FUNC0(FUNC13(src_stream, dst_stream,
                               cancel_func, cancel_baton,
                               scratch_pool));

      /* No need to set exec or read-only flags on special files.  */

      /* ### Shouldn't this record a timestamp and size, etc.? */
      return SVN_NO_ERROR;
    }

  if (FUNC17(style, eol, keywords,
                                     FALSE /* special */,
                                     TRUE /* force_eol_check */))
    {
      /* Wrap it in a translating (expanding) stream.  */
      src_stream = FUNC16(src_stream, eol,
                                               TRUE /* repair */,
                                               keywords,
                                               TRUE /* expand */,
                                               scratch_pool);
    }

  /* Where is the Right Place to put a temp file in this working copy?  */
  FUNC0(FUNC22(&temp_dir_abspath,
                                         db, wcroot_abspath,
                                         scratch_pool, scratch_pool));

  /* Translate to a temporary file. We don't want the user seeing a partial
     file, nor let them muck with it while we translate. We may also need to
     get its TRANSLATED_SIZE before the user can monkey it.  */
  FUNC0(FUNC11(&dst_stream, temp_dir_abspath,
                                         scratch_pool, scratch_pool));

  /* Copy from the source to the dest, translating as we go. This will also
     close both streams.  */
  FUNC0(FUNC13(src_stream, dst_stream,
                           cancel_func, cancel_baton,
                           scratch_pool));

  /* All done. Move the file into place.  */
  /* With a single db we might want to install files in a missing directory.
     Simply trying this scenario on error won't do any harm and at least
     one user reported this problem on IRC. */
  FUNC0(FUNC12(dst_stream, local_abspath,
                                     TRUE /* make_parents*/, scratch_pool));

  /* Tweak the on-disk file according to its properties.  */
#ifndef WIN32
  if (props && FUNC6(props, SVN_PROP_EXECUTABLE))
    FUNC0(FUNC8(local_abspath, TRUE, FALSE,
                                       scratch_pool));
#endif

  /* Note that this explicitly checks the pristine properties, to make sure
     that when the lock is locally set (=modification) it is not read only */
  if (props && FUNC6(props, SVN_PROP_NEEDS_LOCK))
    {
      svn_wc__db_status_t status;
      svn_wc__db_lock_t *lock;
      FUNC0(FUNC20(&status, NULL, NULL, NULL, NULL, NULL, NULL,
                                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                   NULL, NULL, &lock, NULL, NULL, NULL, NULL,
                                   NULL, NULL, NULL, NULL, NULL, NULL,
                                   db, local_abspath,
                                   scratch_pool, scratch_pool));

      if (!lock && status != svn_wc__db_status_added)
        FUNC0(FUNC9(local_abspath, FALSE, scratch_pool));
    }

  if (use_commit_times)
    {
      if (changed_date)
        FUNC0(FUNC7(changed_date,
                                              local_abspath,
                                              scratch_pool));
    }

  /* ### this should happen before we rename the file into place.  */
  if (record_fileinfo)
    {
      FUNC0(FUNC3(wqb, local_abspath,
                                      FALSE /* ignore_enoent */,
                                      scratch_pool));
    }

  return SVN_NO_ERROR;
}