#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct baton_tee {int /*<<< orphan*/  out2; int /*<<< orphan*/  out1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC2(void *baton)
{
  struct baton_tee *bt = baton;

  FUNC0(FUNC1(bt->out1));
  FUNC0(FUNC1(bt->out2));

  return SVN_NO_ERROR;
}