#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* data; scalar_t__ len; scalar_t__ blocksize; int /*<<< orphan*/ * pool; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (char*) ; 

svn_stringbuf_t *
FUNC2(char *str, apr_pool_t *pool)
{
  svn_stringbuf_t *result = FUNC0(pool, sizeof(*result));
  result->pool = pool;
  result->data = str;
  result->len = FUNC1(str);
  result->blocksize = result->len + 1;

  return result;
}