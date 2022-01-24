#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  path; TYPE_3__* fsap_data; } ;
typedef  TYPE_1__ svn_fs_t ;
struct TYPE_12__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  int /*<<< orphan*/  bdb_env_baton_t ;
struct TYPE_13__ {int /*<<< orphan*/ * bdb; int /*<<< orphan*/  miscellaneous; int /*<<< orphan*/  checksum_reps; int /*<<< orphan*/  node_origins; int /*<<< orphan*/  lock_tokens; int /*<<< orphan*/  locks; int /*<<< orphan*/  uuids; int /*<<< orphan*/  strings; int /*<<< orphan*/  representations; int /*<<< orphan*/  changes; int /*<<< orphan*/  copies; int /*<<< orphan*/  transactions; int /*<<< orphan*/  revisions; int /*<<< orphan*/  nodes; } ;
typedef  TYPE_3__ base_fs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,char*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(svn_fs_t *fs)
{
  base_fs_data_t *bfd = fs->fsap_data;
  bdb_env_baton_t *bdb = (bfd ? bfd->bdb : NULL);

  if (!bdb)
    return SVN_NO_ERROR;

  /* Close the databases.  */
  FUNC0(FUNC2(fs, &bfd->nodes, "nodes"));
  FUNC0(FUNC2(fs, &bfd->revisions, "revisions"));
  FUNC0(FUNC2(fs, &bfd->transactions, "transactions"));
  FUNC0(FUNC2(fs, &bfd->copies, "copies"));
  FUNC0(FUNC2(fs, &bfd->changes, "changes"));
  FUNC0(FUNC2(fs, &bfd->representations, "representations"));
  FUNC0(FUNC2(fs, &bfd->strings, "strings"));
  FUNC0(FUNC2(fs, &bfd->uuids, "uuids"));
  FUNC0(FUNC2(fs, &bfd->locks, "locks"));
  FUNC0(FUNC2(fs, &bfd->lock_tokens, "lock-tokens"));
  FUNC0(FUNC2(fs, &bfd->node_origins, "node-origins"));
  FUNC0(FUNC2(fs, &bfd->checksum_reps, "checksum-reps"));
  FUNC0(FUNC2(fs, &bfd->miscellaneous, "miscellaneous"));

  /* Finally, close the environment.  */
  bfd->bdb = 0;
  {
    svn_error_t *err = FUNC4(bdb);
    if (err)
      return FUNC3
        (err->apr_err, err,
         FUNC1("Berkeley DB error for filesystem '%s'"
           " while closing environment:\n"),
         fs->path);
  }
  return SVN_NO_ERROR;
}