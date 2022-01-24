#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ kind; } ;
typedef  TYPE_1__ svn_fs_x__noderev_t ;
typedef  int /*<<< orphan*/  svn_fs_x__id_t ;
struct TYPE_8__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_2__ svn_fs_x__dirent_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_9__ {int /*<<< orphan*/  hint; int /*<<< orphan*/  fs; TYPE_1__* node_revision; } ;
typedef  TYPE_3__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_DIRECTORY ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__**,int /*<<< orphan*/ ,TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

svn_error_t *
FUNC7(svn_fs_x__id_t *id_p,
                       dag_node_t *parent,
                       const char *name,
                       apr_pool_t *scratch_pool)
{
  svn_fs_x__dirent_t *dirent;
  svn_fs_x__noderev_t *noderev = parent->node_revision;

  if (noderev->kind != svn_node_dir)
    return FUNC2(SVN_ERR_FS_NOT_DIRECTORY, NULL,
                            FUNC1("Can't get entries of non-directory"));

  /* Make sure that NAME is a single path component. */
  if (! FUNC6(name))
    return FUNC3
      (SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT, NULL,
       "Attempted to open node with an illegal name '%s'", name);

  /* Get a dirent hash for this directory. */
  FUNC0(FUNC5(&dirent, parent->fs, noderev,
                                           name, &parent->hint,
                                           scratch_pool, scratch_pool));
  if (dirent)
    *id_p = dirent->id;
  else
    FUNC4(id_p);

  return SVN_NO_ERROR;
}