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
typedef  int /*<<< orphan*/  svn_element__payload_t ;
struct TYPE_4__ {int parent_eid; int /*<<< orphan*/  payload; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ svn_element__content_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

svn_element__content_t *
FUNC3(int parent_eid,
                            const char *name,
                            const svn_element__payload_t *payload,
                            apr_pool_t *result_pool)
{
  svn_element__content_t *content
     = FUNC0(result_pool, sizeof(*content));

  content->parent_eid = parent_eid;
  content->name = FUNC1(result_pool, name);
  content->payload = FUNC2(payload, result_pool);
  return content;
}