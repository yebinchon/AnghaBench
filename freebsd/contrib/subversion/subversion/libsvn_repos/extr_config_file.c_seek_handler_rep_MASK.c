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
typedef  int /*<<< orphan*/  svn_stream_mark_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_3__ {int /*<<< orphan*/  inner; } ;
typedef  TYPE_1__ presentation_stream_baton_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static svn_error_t *
FUNC4(void *baton, const svn_stream_mark_t *mark)
{
  presentation_stream_baton_t *b = baton;
  FUNC0(FUNC1(b));

  return FUNC2(FUNC3(b->inner, mark));
}