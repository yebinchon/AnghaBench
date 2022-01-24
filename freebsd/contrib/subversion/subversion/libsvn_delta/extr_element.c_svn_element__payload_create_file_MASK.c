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
struct TYPE_5__ {int /*<<< orphan*/  text; int /*<<< orphan*/ * props; int /*<<< orphan*/  kind; int /*<<< orphan*/ * pool; } ;
typedef  TYPE_1__ svn_element__payload_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  svn_node_file ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_element__payload_t *
FUNC6(apr_hash_t *props,
                                 svn_stringbuf_t *text,
                                 apr_pool_t *result_pool)
{
  svn_element__payload_t *new_payload
    = FUNC1(result_pool, sizeof(*new_payload));

  FUNC0(text);

  new_payload->pool = result_pool;
  new_payload->kind = svn_node_file;
  new_payload->props = props ? FUNC4(props, result_pool) : NULL;
  new_payload->text = FUNC5(text, result_pool);
  FUNC2(FUNC3(new_payload));
  return new_payload;
}