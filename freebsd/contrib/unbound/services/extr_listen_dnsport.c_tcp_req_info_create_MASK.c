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
struct tcp_req_info {struct sldns_buffer* spool_buffer; } ;
struct sldns_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct tcp_req_info*,int /*<<< orphan*/ ,int) ; 

struct tcp_req_info*
FUNC3(struct sldns_buffer* spoolbuf)
{
	struct tcp_req_info* req = (struct tcp_req_info*)FUNC1(sizeof(*req));
	if(!req) {
		FUNC0("malloc failure for new stream outoforder processing structure");
		return NULL;
	}
	FUNC2(req, 0, sizeof(*req));
	req->spool_buffer = spoolbuf;
	return req;
}