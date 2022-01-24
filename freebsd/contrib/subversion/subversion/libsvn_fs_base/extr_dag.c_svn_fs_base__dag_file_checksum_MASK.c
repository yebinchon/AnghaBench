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
typedef  int /*<<< orphan*/  trail_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  scalar_t__ svn_checksum_kind_t ;
struct TYPE_5__ {int /*<<< orphan*/  data_key; } ;
typedef  TYPE_1__ node_revision_t ;
struct TYPE_6__ {scalar_t__ kind; int /*<<< orphan*/  fs; int /*<<< orphan*/  id; } ;
typedef  TYPE_2__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_BAD_CHECKSUM_KIND ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_FILE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ svn_checksum_md5 ; 
 scalar_t__ svn_checksum_sha1 ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_file ; 

svn_error_t *
FUNC6(svn_checksum_t **checksum,
                               svn_checksum_kind_t checksum_kind,
                               dag_node_t *file,
                               trail_t *trail,
                               apr_pool_t *pool)
{
  node_revision_t *noderev;

  if (file->kind != svn_node_file)
    return FUNC3
      (SVN_ERR_FS_NOT_FILE, NULL,
       FUNC1("Attempted to get checksum of a *non*-file node"));

  FUNC0(FUNC5(&noderev, file->fs, file->id,
                                        trail, pool));
  if (! noderev->data_key)
    {
      *checksum = NULL;
      return SVN_NO_ERROR;
    }

  if (checksum_kind == svn_checksum_md5)
    return FUNC4(checksum, NULL, file->fs,
                                               noderev->data_key,
                                               trail, pool);
  else if (checksum_kind == svn_checksum_sha1)
    return FUNC4(NULL, checksum, file->fs,
                                               noderev->data_key,
                                               trail, pool);
  else
    return FUNC2(SVN_ERR_BAD_CHECKSUM_KIND, NULL, NULL);
}