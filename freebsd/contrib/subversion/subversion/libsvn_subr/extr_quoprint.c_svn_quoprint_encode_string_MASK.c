#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 

svn_stringbuf_t *
FUNC3(const svn_stringbuf_t *str, apr_pool_t *pool)
{
  svn_stringbuf_t *encoded = FUNC2(pool);
  int linelen = 0;

  FUNC0(encoded, str->data, str->len, &linelen);
  if (linelen > 0)
    FUNC1(encoded, "=\n");
  return encoded;
}