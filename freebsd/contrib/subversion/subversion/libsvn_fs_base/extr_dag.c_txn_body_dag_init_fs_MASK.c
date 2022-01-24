#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {int /*<<< orphan*/  pool; TYPE_3__* fs; } ;
typedef  TYPE_1__ trail_t ;
struct TYPE_26__ {int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
typedef  TYPE_2__ svn_string_t ;
typedef  scalar_t__ svn_revnum_t ;
struct TYPE_27__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_3__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_28__ {char const* txn_id; } ;
typedef  TYPE_4__ revision_t ;
typedef  int /*<<< orphan*/  noderev ;
struct TYPE_29__ {char* created_path; int /*<<< orphan*/  kind; } ;
typedef  TYPE_5__ node_revision_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_CORRUPT ; 
 scalar_t__ SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/  SVN_PROP_REVISION_DATE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  copy_kind_real ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,char const*,scalar_t__,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char const**,TYPE_3__*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_5__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__*,TYPE_3__*,TYPE_4__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char const**,TYPE_3__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_node_dir ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC16(void *baton,
                     trail_t *trail)
{
  node_revision_t noderev;
  revision_t revision;
  svn_revnum_t rev = SVN_INVALID_REVNUM;
  svn_fs_t *fs = trail->fs;
  svn_string_t date;
  const char *txn_id;
  const char *copy_id;
  svn_fs_id_t *root_id = FUNC7("0", "0", "0", trail->pool);

  /* Create empty root directory with node revision 0.0.0. */
  FUNC3(&noderev, 0, sizeof(noderev));
  noderev.kind = svn_node_dir;
  noderev.created_path = "/";
  FUNC0(FUNC12(fs, root_id, &noderev,
                                        trail, trail->pool));

  /* Create a new transaction (better have an id of "0") */
  FUNC0(FUNC11(&txn_id, fs, root_id, trail, trail->pool));
  if (FUNC4(txn_id, "0"))
    return FUNC6
      (SVN_ERR_FS_CORRUPT, 0,
       FUNC1("Corrupt DB: initial transaction id not '0' in filesystem '%s'"),
       fs->path);

  /* Create a default copy (better have an id of "0") */
  FUNC0(FUNC14(&copy_id, fs, trail, trail->pool));
  if (FUNC4(copy_id, "0"))
    return FUNC6
      (SVN_ERR_FS_CORRUPT, 0,
       FUNC1("Corrupt DB: initial copy id not '0' in filesystem '%s'"), fs->path);
  FUNC0(FUNC10(fs, copy_id, NULL, NULL, root_id,
                                  copy_kind_real, trail, trail->pool));

  /* Link it into filesystem revision 0. */
  revision.txn_id = txn_id;
  FUNC0(FUNC13(&rev, fs, &revision, trail, trail->pool));
  if (rev != 0)
    return FUNC6(SVN_ERR_FS_CORRUPT, 0,
                             FUNC1("Corrupt DB: initial revision number "
                               "is not '0' in filesystem '%s'"), fs->path);

  /* Promote our transaction to a "committed" transaction. */
  FUNC0(FUNC9(fs, txn_id, rev,
                                          trail, trail->pool));

  /* Set a date on revision 0. */
  date.data = FUNC15(FUNC2(), trail->pool);
  date.len = FUNC5(date.data);
  return FUNC8(fs, 0, SVN_PROP_REVISION_DATE, NULL, &date,
                                   trail, trail->pool);
}