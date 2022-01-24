#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_2__* fsap_data; } ;
typedef  TYPE_1__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_5__ {scalar_t__ rep_cache_db_opened; int /*<<< orphan*/ * rep_cache_db; } ;
typedef  TYPE_2__ fs_fs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC2(svn_fs_t *fs)
{
  fs_fs_data_t *ffd = fs->fsap_data;

  if (ffd->rep_cache_db)
    {
      FUNC0(FUNC1(ffd->rep_cache_db));
      ffd->rep_cache_db = NULL;
      ffd->rep_cache_db_opened = 0;
    }

  return SVN_NO_ERROR;
}