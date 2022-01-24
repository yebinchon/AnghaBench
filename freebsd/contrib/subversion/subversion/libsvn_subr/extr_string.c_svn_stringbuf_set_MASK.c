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
struct TYPE_3__ {scalar_t__ len; int /*<<< orphan*/  data; int /*<<< orphan*/  pool; int /*<<< orphan*/  blocksize; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  scalar_t__ apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void**,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,scalar_t__) ; 
 scalar_t__ FUNC2 (char const*) ; 

void
FUNC3(svn_stringbuf_t *str, const char *value)
{
  apr_size_t amt = FUNC2(value);

  FUNC0((void**) &str->data, &str->blocksize, amt + 1, str->pool);
  FUNC1(str->data, value, amt + 1);
  str->len = amt;
}