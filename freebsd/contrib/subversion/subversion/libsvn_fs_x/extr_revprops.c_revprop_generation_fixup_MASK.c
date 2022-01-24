#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  has_write_lock; } ;
typedef  TYPE_1__ svn_fs_x__data_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_6__ {int* generation; TYPE_3__* fs; } ;
typedef  TYPE_2__ revprop_generation_upgrade_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_7__ {TYPE_1__* fsap_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC4(void *void_baton,
                         apr_pool_t *scratch_pool)
{
  revprop_generation_upgrade_t *baton = void_baton;
  svn_fs_x__data_t *ffd = baton->fs->fsap_data;
  FUNC1(ffd->has_write_lock);

  /* Maybe, either the original revprop writer or some other reader has
     already corrected / bumped the revprop generation.  Thus, we need
     to read it again.  However, we will now be the only ones changing
     the file contents due to us holding the write lock. */
  FUNC0(FUNC2(baton->generation, baton->fs,
                                       scratch_pool));

  /* Cause everyone to re-read revprops upon their next access, if the
     last revprop write did not complete properly. */
  if (*baton->generation % 2)
    {
      ++*baton->generation;
      FUNC0(FUNC3(baton->fs,
                                            *baton->generation,
                                            scratch_pool));
    }

  return SVN_NO_ERROR;
}