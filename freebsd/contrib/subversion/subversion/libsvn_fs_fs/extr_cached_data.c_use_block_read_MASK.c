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
struct TYPE_5__ {TYPE_2__* fsap_data; } ;
typedef  TYPE_1__ svn_fs_t ;
typedef  int svn_boolean_t ;
struct TYPE_6__ {scalar_t__ use_block_read; } ;
typedef  TYPE_2__ fs_fs_data_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static svn_boolean_t
FUNC1(svn_fs_t *fs)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  return FUNC0(fs) && ffd->use_block_read;
}