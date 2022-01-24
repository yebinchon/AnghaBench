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
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_x__txn_id_t ;
typedef  int /*<<< orphan*/  svn_fs_x__batch_fsync_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_3__ {void** lockcookie; int /*<<< orphan*/  txn_id; } ;
typedef  TYPE_1__ get_writable_proto_rev_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_off_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_END ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  get_writable_proto_rev_body ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC11(apr_file_t **file,
                       svn_fs_t *fs,
                       svn_fs_x__txn_id_t txn_id,
                       svn_revnum_t revision,
                       svn_fs_x__batch_fsync_t *batch,
                       apr_pool_t *scratch_pool)
{
  get_writable_proto_rev_baton_t baton;
  apr_off_t end_offset = 0;
  void *lockcookie;

  const char *proto_rev_filename
    = FUNC6(fs, txn_id, scratch_pool);
  const char *final_rev_filename
    = FUNC5(fs, revision, scratch_pool);

  /* Acquire exclusive access to the proto-rev file. */
  baton.lockcookie = &lockcookie;
  baton.txn_id = txn_id;

  FUNC0(FUNC10(fs, get_writable_proto_rev_body, &baton,
                            scratch_pool));

  /* Move the proto-rev file to its final location as revision data file.
     After that, we don't need to protect it anymore and can unlock it. */
  FUNC0(FUNC2(FUNC7(proto_rev_filename,
                                                       final_rev_filename,
                                                       FALSE,
                                                       scratch_pool),
                                   FUNC9(fs, txn_id, lockcookie,
                                                    scratch_pool)));
  FUNC0(FUNC3(batch, final_rev_filename,
                                         scratch_pool));

  /* Now open the prototype revision file and seek to the end.
     Note that BATCH always seeks to position 0 before returning the file. */
  FUNC0(FUNC4(file, batch, final_rev_filename,
                                          scratch_pool));
  FUNC0(FUNC8(*file, APR_END, &end_offset, scratch_pool));

  /* We don't want unused sections (such as leftovers from failed delta
     stream) in our file.  Detect and fix those cases by truncating the
     protorev file. */
  FUNC0(FUNC1(fs, *file, end_offset, txn_id,
                                  scratch_pool));

  return SVN_NO_ERROR;
}