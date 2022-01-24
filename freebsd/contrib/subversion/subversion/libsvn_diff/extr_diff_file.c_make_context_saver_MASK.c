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
struct TYPE_5__ {scalar_t__ context_size; int /*<<< orphan*/  pool; int /*<<< orphan*/  output_stream; TYPE_2__* context_saver; } ;
typedef  TYPE_1__ svn_diff3__file_output_baton_t ;
struct TYPE_6__ {scalar_t__ context_size; void* len; void* data; int /*<<< orphan*/  stream; } ;
typedef  TYPE_2__ context_saver_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  context_saver_stream_write ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(svn_diff3__file_output_baton_t *fob)
{
  context_saver_t *cs;

  FUNC1(fob->context_size > 0); /* Or nothing to save */

  FUNC2(fob->pool);
  cs = FUNC0(fob->pool, sizeof(*cs));
  cs->stream = FUNC3(fob->pool);
  FUNC4(cs->stream, cs);
  FUNC5(cs->stream, context_saver_stream_write);
  fob->context_saver = cs;
  fob->output_stream = cs->stream;
  cs->context_size = fob->context_size;
  cs->data = FUNC0(fob->pool, sizeof(*cs->data) * cs->context_size);
  cs->len = FUNC0(fob->pool, sizeof(*cs->len) * cs->context_size);
}