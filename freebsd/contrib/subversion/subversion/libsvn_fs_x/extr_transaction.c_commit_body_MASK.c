#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_x__txn_id_t ;
typedef  int /*<<< orphan*/  svn_fs_x__pair_cache_key_t ;
typedef  int /*<<< orphan*/  svn_fs_x__id_t ;
struct TYPE_23__ {scalar_t__ youngest_rev_cache; int /*<<< orphan*/  flush_to_disk; } ;
typedef  TYPE_1__ svn_fs_x__data_t ;
typedef  int /*<<< orphan*/  svn_fs_x__batch_fsync_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_24__ {TYPE_3__* txn; TYPE_4__* fs; scalar_t__* new_rev_p; int /*<<< orphan*/  reps_pool; int /*<<< orphan*/  reps_hash; int /*<<< orphan*/  reps_to_cache; } ;
typedef  TYPE_2__ commit_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_off_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_file_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;
struct TYPE_26__ {TYPE_1__* fsap_data; } ;
struct TYPE_25__ {scalar_t__ base_rev; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SVN_ERR_FS_TXN_OUT_OF_DATE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,TYPE_4__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC15 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ *) ; 
 char* FUNC16 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ **,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (char const**,TYPE_3__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC33(void *baton,
            apr_pool_t *scratch_pool)
{
  commit_baton_t *cb = baton;
  svn_fs_x__data_t *ffd = cb->fs->fsap_data;
  const char *old_rev_filename, *rev_filename;
  const char *revprop_filename;
  svn_fs_x__id_t root_id, new_root_id;
  svn_revnum_t old_rev, new_rev;
  apr_file_t *proto_file;
  apr_off_t initial_offset, changed_path_offset;
  svn_fs_x__txn_id_t txn_id = FUNC20(cb->txn);
  apr_hash_t *changed_paths;
  svn_fs_x__batch_fsync_t *batch;
  apr_array_header_t *directory_ids
    = FUNC3(scratch_pool, 4, sizeof(svn_fs_x__pair_cache_key_t));

  /* We perform a sequence of (potentially) large allocations.
     Keep the peak memory usage low by using a SUBPOOL and cleaning it
     up frequently. */
  apr_pool_t *subpool = FUNC26(scratch_pool);

  /* Re-Read the current repository format.  All our repo upgrade and
     config evaluation strategies are such that existing information in
     FS and FFD remains valid.

     Although we don't recommend upgrading hot repositories, people may
     still do it and we must make sure to either handle them gracefully
     or to error out.
   */
  FUNC0(FUNC18(cb->fs, subpool));

  /* Get the current youngest revision. */
  FUNC0(FUNC21(&old_rev, cb->fs, subpool));
  FUNC25(subpool);

  /* Check to make sure this transaction is based off the most recent
     revision. */
  if (cb->txn->base_rev != old_rev)
    return FUNC8(SVN_ERR_FS_TXN_OUT_OF_DATE, NULL,
                            FUNC2("Transaction out of date"));

  /* We need the changes list for verification as well as for writing it
     to the final rev file. */
  FUNC0(FUNC19(&changed_paths, cb->fs, txn_id,
                                      scratch_pool));

  /* Locks may have been added (or stolen) between the calling of
     previous svn_fs.h functions and svn_fs_commit_txn(), so we need
     to re-examine every changed-path in the txn and re-verify all
     discovered locks. */
  FUNC0(FUNC29(cb->fs, txn_id, changed_paths, subpool));
  FUNC25(subpool);

  /* We are going to be one better than this puny old revision. */
  new_rev = old_rev + 1;

  /* Use this to force all data to be flushed to physical storage
     (to the degree our environment will allow). */
  FUNC0(FUNC10(&batch, ffd->flush_to_disk,
                                       scratch_pool));

  /* Set up the target directory. */
  FUNC0(FUNC4(cb->fs, new_rev, batch, subpool));

  /* Get a write handle on the proto revision file.

     ### This "breaks" the transaction by removing the protorev file
     ### but the revision is not yet complete.  If this commit does
     ### not complete for any reason the transaction will be lost. */
  FUNC0(FUNC6(&proto_file, cb->fs, txn_id, new_rev,
                                 batch, subpool));
  FUNC0(FUNC24(&initial_offset, proto_file, subpool));
  FUNC25(subpool);

  /* Write out all the node-revisions and directory contents. */
  FUNC11(&root_id, txn_id);
  FUNC0(FUNC31(&new_root_id, proto_file, new_rev, cb->fs, &root_id,
                          initial_offset, directory_ids, cb->reps_to_cache,
                          cb->reps_hash, cb->reps_pool, TRUE, changed_paths,
                          subpool));
  FUNC25(subpool);

  /* Write the changed-path information. */
  FUNC0(FUNC30(&changed_path_offset, proto_file,
                                        cb->fs, txn_id, changed_paths,
                                        new_rev, subpool));
  FUNC25(subpool);

  /* Append the index data to the rev file. */
  FUNC0(FUNC9(cb->fs, proto_file,
                      FUNC13(cb->fs, txn_id, subpool),
                      FUNC14(cb->fs, txn_id, subpool),
                      new_rev, subpool));
  FUNC25(subpool);

  /* Set the correct permissions. */
  old_rev_filename = FUNC16(cb->fs, old_rev, subpool);
  rev_filename = FUNC15(cb->fs, new_rev, subpool);
  FUNC0(FUNC22(rev_filename, old_rev_filename, subpool));

  /* Move the revprops file into place. */
  FUNC1(! FUNC12(cb->fs, new_rev));
  FUNC0(FUNC32(&revprop_filename, cb->txn, new_rev, batch,
                              subpool, subpool));
  FUNC0(FUNC22(revprop_filename, old_rev_filename, subpool));
  FUNC25(subpool);

  /* Verify contents (no-op outside DEBUG mode). */
  FUNC0(FUNC23(proto_file, subpool));
  FUNC0(FUNC28(cb->fs, new_rev,
                                                      subpool));

  /* Bump 'current'. */
  FUNC0(FUNC5(cb->fs, new_rev, batch, subpool));

  /* At this point the new revision is committed and globally visible
     so let the caller know it succeeded by giving it the new revision
     number, which fulfills svn_fs_commit_txn() contract.  Any errors
     after this point do not change the fact that a new revision was
     created. */
  *cb->new_rev_p = new_rev;

  ffd->youngest_rev_cache = new_rev;

  /* Make the directory contents already cached for the new revision
   * visible. */
  FUNC0(FUNC7(cb->fs, directory_ids, subpool));

  /* Remove this transaction directory. */
  FUNC0(FUNC17(cb->fs, cb->txn->id, subpool));

  FUNC27(subpool);
  return SVN_NO_ERROR;
}