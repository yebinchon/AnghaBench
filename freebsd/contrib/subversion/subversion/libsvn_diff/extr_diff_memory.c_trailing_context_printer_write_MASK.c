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
struct trailing_context_printer {scalar_t__ lines_to_print; TYPE_1__* mob; } ;
typedef  int /*<<< orphan*/  apr_size_t ;
struct TYPE_2__ {int /*<<< orphan*/  real_output_stream; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC4(void *baton,
                               const char *data,
                               apr_size_t *len)
{
  struct trailing_context_printer *tcp = baton;
  FUNC1(tcp->lines_to_print > 0);
  FUNC0(FUNC3(tcp->mob->real_output_stream, data, len));
  tcp->lines_to_print--;
  if (tcp->lines_to_print == 0)
    FUNC2(tcp->mob);
  return SVN_NO_ERROR;
}