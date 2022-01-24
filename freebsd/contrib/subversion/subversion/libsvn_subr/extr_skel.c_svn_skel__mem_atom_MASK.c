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
struct TYPE_4__ {int /*<<< orphan*/  len; void const* data; int /*<<< orphan*/  is_atom; } ;
typedef  TYPE_1__ svn_skel_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 

svn_skel_t *
FUNC1(const void *addr,
                   apr_size_t len,
                   apr_pool_t *pool)
{
  svn_skel_t *skel = FUNC0(pool, sizeof(*skel));
  skel->is_atom = TRUE;
  skel->data = addr;
  skel->len = len;

  return skel;
}