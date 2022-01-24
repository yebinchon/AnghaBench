#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_7__ {int /*<<< orphan*/  id; TYPE_4__* prop_rep; } ;
typedef  TYPE_1__ node_revision_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_file_t ;
struct TYPE_8__ {int /*<<< orphan*/  revision; int /*<<< orphan*/  txn_id; } ;

/* Variables and functions */
 int APR_BUFFERED ; 
 int APR_CREATE ; 
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int APR_TRUNCATE ; 
 int APR_WRITE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_HASH_TERMINATOR ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC11(svn_fs_t *fs,
                        node_revision_t *noderev,
                        apr_hash_t *proplist,
                        apr_pool_t *pool)
{
  const char *filename
    = FUNC5(fs, noderev->id, pool);
  apr_file_t *file;
  svn_stream_t *out;

  /* Dump the property list to the mutable property file. */
  FUNC0(FUNC9(&file, filename,
                           APR_WRITE | APR_CREATE | APR_TRUNCATE
                           | APR_BUFFERED, APR_OS_DEFAULT, pool));
  out = FUNC10(file, TRUE, pool);
  FUNC0(FUNC7(proplist, out, SVN_HASH_TERMINATOR, pool));
  FUNC0(FUNC8(file, pool));

  /* Mark the node-rev's prop rep as mutable, if not already done. */
  if (!noderev->prop_rep || !FUNC2(noderev->prop_rep))
    {
      noderev->prop_rep = FUNC1(pool, sizeof(*noderev->prop_rep));
      noderev->prop_rep->txn_id = *FUNC4(noderev->id);
      FUNC0(FUNC3(fs, noderev->prop_rep, pool));
      noderev->prop_rep->revision = SVN_INVALID_REVNUM;
      FUNC0(FUNC6(fs, noderev->id, noderev, FALSE,
                                           pool));
    }

  return SVN_NO_ERROR;
}