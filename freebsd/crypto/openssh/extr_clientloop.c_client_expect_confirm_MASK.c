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
struct ssh {int dummy; } ;
struct channel_reply_ctx {char const* request_type; int action; } ;
typedef  enum confirm_action { ____Placeholder_confirm_action } confirm_action ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ssh*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct channel_reply_ctx*) ; 
 int /*<<< orphan*/  client_abandon_status_confirm ; 
 int /*<<< orphan*/  client_status_confirm ; 
 struct channel_reply_ctx* FUNC1 (int,int) ; 

void
FUNC2(struct ssh *ssh, int id, const char *request,
    enum confirm_action action)
{
	struct channel_reply_ctx *cr = FUNC1(1, sizeof(*cr));

	cr->request_type = request;
	cr->action = action;

	FUNC0(ssh, id, client_status_confirm,
	    client_abandon_status_confirm, cr);
}