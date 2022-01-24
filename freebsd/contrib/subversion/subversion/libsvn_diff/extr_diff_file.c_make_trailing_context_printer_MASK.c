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
typedef  int /*<<< orphan*/  svn_stream_t ;
struct TYPE_3__ {int /*<<< orphan*/ * output_stream; int /*<<< orphan*/  pool; int /*<<< orphan*/  context_size; } ;
typedef  TYPE_1__ svn_diff3__file_output_baton_t ;
struct trailing_context_printer {TYPE_1__* fob; int /*<<< orphan*/  lines_to_print; } ;

/* Variables and functions */
 struct trailing_context_printer* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct trailing_context_printer*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  trailing_context_printer_write ; 

__attribute__((used)) static void
FUNC5(svn_diff3__file_output_baton_t *btn)
{
  struct trailing_context_printer *tcp;
  svn_stream_t *s;

  FUNC1(btn->pool);

  tcp = FUNC0(btn->pool, sizeof(*tcp));
  tcp->lines_to_print = btn->context_size;
  tcp->fob = btn;
  s = FUNC2(btn->pool);
  FUNC3(s, tcp);
  FUNC4(s, trailing_context_printer_write);
  btn->output_stream = s;
}