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
typedef  int svn_revnum_t ;
struct TYPE_4__ {int max_files_per_dir; } ;
typedef  TYPE_1__ svn_fs_x__data_t ;
struct TYPE_5__ {TYPE_1__* fsap_data; } ;
typedef  TYPE_2__ svn_fs_t ;
typedef  int svn_boolean_t ;

/* Variables and functions */

__attribute__((used)) static svn_boolean_t
FUNC0(svn_fs_t *fs,
           svn_revnum_t r1,
           svn_revnum_t r2)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  return (r1 / ffd->max_files_per_dir) == (r2 / ffd->max_files_per_dir);
}