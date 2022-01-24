#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int dummy; } ;
struct sldns_buffer {int dummy; } ;
struct comm_reply {TYPE_3__* c; int /*<<< orphan*/  addr; int /*<<< orphan*/  addrlen; scalar_t__ srctype; } ;
struct TYPE_8__ {scalar_t__ type; int /*<<< orphan*/  tcp_timeout_msec; scalar_t__ tcp_req_info; struct sldns_buffer* buffer; TYPE_1__* tcp_parent; TYPE_2__* dtenv; struct sldns_buffer* dnscrypt_buffer; } ;
struct TYPE_7__ {scalar_t__ log_client_response_messages; } ;
struct TYPE_6__ {TYPE_2__* dtenv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,struct sldns_buffer*,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,struct sldns_buffer*,struct sockaddr*,int /*<<< orphan*/ ,struct comm_reply*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ comm_udp ; 
 int /*<<< orphan*/  FUNC3 (struct comm_reply*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,scalar_t__,struct sldns_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

void 
FUNC7(struct comm_reply *repinfo)
{
	struct sldns_buffer* buffer;
	FUNC5(repinfo && repinfo->c);
#ifdef USE_DNSCRYPT
	buffer = repinfo->c->dnscrypt_buffer;
	if(!dnsc_handle_uncurved_request(repinfo)) {
		return;
	}
#else
	buffer = repinfo->c->buffer;
#endif
	if(repinfo->c->type == comm_udp) {
		if(repinfo->srctype)
			FUNC1(repinfo->c, 
			buffer, (struct sockaddr*)&repinfo->addr, 
			repinfo->addrlen, repinfo);
		else
			FUNC0(repinfo->c, buffer,
			(struct sockaddr*)&repinfo->addr, repinfo->addrlen);
#ifdef USE_DNSTAP
		if(repinfo->c->dtenv != NULL &&
		   repinfo->c->dtenv->log_client_response_messages)
			dt_msg_send_client_response(repinfo->c->dtenv,
			&repinfo->addr, repinfo->c->type, repinfo->c->buffer);
#endif
	} else {
#ifdef USE_DNSTAP
		if(repinfo->c->tcp_parent->dtenv != NULL &&
		   repinfo->c->tcp_parent->dtenv->log_client_response_messages)
			dt_msg_send_client_response(repinfo->c->tcp_parent->dtenv,
			&repinfo->addr, repinfo->c->type, repinfo->c->buffer);
#endif
		if(repinfo->c->tcp_req_info) {
			FUNC6(repinfo->c->tcp_req_info);
		} else {
			FUNC2(repinfo->c, -1,
				repinfo->c->tcp_timeout_msec);
		}
	}
}