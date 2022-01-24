#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stringbuf_t ;
struct TYPE_5__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,size_t*,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,size_t,size_t,int /*<<< orphan*/ ) ; 
 TYPE_1__ const* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

const svn_string_t *
FUNC4(const svn_string_t *str,
                          svn_boolean_t break_lines,
                          apr_pool_t *pool)
{
  svn_stringbuf_t *encoded = FUNC3(pool);
  unsigned char ingroup[3];
  size_t ingrouplen = 0;
  size_t linelen = 0;

  FUNC0(encoded, str->data, str->len, ingroup, &ingrouplen, &linelen,
               break_lines);
  FUNC1(encoded, ingroup, ingrouplen, linelen,
                       break_lines);
  return FUNC2(encoded);
}