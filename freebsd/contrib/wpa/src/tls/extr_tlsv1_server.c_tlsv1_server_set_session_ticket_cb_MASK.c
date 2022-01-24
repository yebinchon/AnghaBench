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
typedef  int /*<<< orphan*/  tlsv1_server_session_ticket_cb ;
struct tlsv1_server {void* session_ticket_cb_ctx; int /*<<< orphan*/  session_ticket_cb; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,void*) ; 

void FUNC1(struct tlsv1_server *conn,
					tlsv1_server_session_ticket_cb cb,
					void *ctx)
{
	FUNC0(MSG_DEBUG, "TLSv1: SessionTicket callback set %p (ctx %p)",
		   cb, ctx);
	conn->session_ticket_cb = cb;
	conn->session_ticket_cb_ctx = ctx;
}