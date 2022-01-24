#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_fs_x__txn_id_t ;
struct TYPE_10__ {int /*<<< orphan*/  change_set; } ;
struct TYPE_9__ {TYPE_7__* prop_rep; TYPE_3__ noderev_id; } ;
typedef  TYPE_2__ svn_fs_x__noderev_t ;
typedef  TYPE_3__ svn_fs_x__id_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_file_t ;
struct TYPE_8__ {int /*<<< orphan*/  number; int /*<<< orphan*/  change_set; } ;
struct TYPE_11__ {TYPE_1__ id; } ;

/* Variables and functions */
 int APR_BUFFERED ; 
 int APR_CREATE ; 
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int APR_TRUNCATE ; 
 int APR_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_7__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ *,TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC11(svn_fs_t *fs,
                       svn_fs_x__noderev_t *noderev,
                       apr_hash_t *proplist,
                       apr_pool_t *scratch_pool)
{
  const svn_fs_x__id_t *id = &noderev->noderev_id;
  const char *filename = FUNC5(fs, id, scratch_pool,
                                                       scratch_pool);
  apr_file_t *file;
  svn_stream_t *out;

  /* Dump the property list to the mutable property file. */
  FUNC0(FUNC9(&file, filename,
                           APR_WRITE | APR_CREATE | APR_TRUNCATE
                           | APR_BUFFERED, APR_OS_DEFAULT, scratch_pool));
  out = FUNC10(file, TRUE, scratch_pool);
  FUNC0(FUNC7(out, proplist, scratch_pool));
  FUNC0(FUNC8(file, scratch_pool));

  /* Mark the node-rev's prop rep as mutable, if not already done. */
  if (!noderev->prop_rep
      || FUNC4(noderev->prop_rep->id.change_set))
    {
      svn_fs_x__txn_id_t txn_id
        = FUNC3(noderev->noderev_id.change_set);
      noderev->prop_rep = FUNC2(scratch_pool,
                                      sizeof(*noderev->prop_rep));
      noderev->prop_rep->id.change_set = id->change_set;
      FUNC0(FUNC1(&noderev->prop_rep->id.number, fs,
                                  txn_id, scratch_pool));
      FUNC0(FUNC6(fs, noderev, scratch_pool));
    }

  return SVN_NO_ERROR;
}