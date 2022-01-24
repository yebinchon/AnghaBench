#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tunnel_data_t {scalar_t__ request; scalar_t__ response; int /*<<< orphan*/  tunnel_baton; int /*<<< orphan*/  tunnel_context; int /*<<< orphan*/  (* close_tunnel ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  apr_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static apr_status_t FUNC3(void *baton)
{
  const struct tunnel_data_t *const td = baton;

  if (td->close_tunnel)
    td->close_tunnel(td->tunnel_context, td->tunnel_baton);

  FUNC1(FUNC2(td->request));

  /* We might have one stream to use for both request and response! */
  if (td->request != td->response)
    FUNC1(FUNC2(td->response));

  return APR_SUCCESS; /* ignored */
}