#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_2__ {int /*<<< orphan*/  filehandle_pool; int /*<<< orphan*/  scratch_pool; } ;
typedef  TYPE_1__ rep_read_baton_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC1(void *baton)
{
  rep_read_baton_t *rb = baton;

  FUNC0(rb->scratch_pool);
  FUNC0(rb->filehandle_pool);

  return SVN_NO_ERROR;
}