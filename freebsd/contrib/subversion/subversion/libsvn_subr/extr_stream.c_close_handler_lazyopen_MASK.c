#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_3__ {scalar_t__ real_stream; scalar_t__ open_on_close; } ;
typedef  TYPE_1__ lazyopen_baton_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static svn_error_t *
FUNC3(void *baton)
{
  lazyopen_baton_t *b = baton;

  if (b->open_on_close)
    FUNC0(FUNC1(b));
  if (b->real_stream)
    FUNC0(FUNC2(b->real_stream));

  return SVN_NO_ERROR;
}