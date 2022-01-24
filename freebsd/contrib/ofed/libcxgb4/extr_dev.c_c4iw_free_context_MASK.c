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
struct ibv_context {int dummy; } ;
struct c4iw_context {scalar_t__ status_page_size; int /*<<< orphan*/  status_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct c4iw_context*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct c4iw_context* FUNC2 (struct ibv_context*) ; 

__attribute__((used)) static void FUNC3(struct ibv_context *ibctx)
{
	struct c4iw_context *context = FUNC2(ibctx);

	if (context->status_page_size)
		FUNC1(context->status_page, context->status_page_size);
	FUNC0(context);
}