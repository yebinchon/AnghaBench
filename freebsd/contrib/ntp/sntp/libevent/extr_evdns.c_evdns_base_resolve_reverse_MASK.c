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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct request {int dummy; } ;
struct in_addr {int /*<<< orphan*/  s_addr; } ;
struct evdns_request {int /*<<< orphan*/ * current_req; } ;
struct evdns_base {int dummy; } ;
typedef  int /*<<< orphan*/  evdns_callback_type ;
typedef  int /*<<< orphan*/  buf ;
typedef  scalar_t__ a ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evdns_base*) ; 
 int /*<<< orphan*/  EVDNS_LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC1 (struct evdns_base*) ; 
 int /*<<< orphan*/  FUNC2 (struct in_addr const*) ; 
 int /*<<< orphan*/  TYPE_PTR ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 struct evdns_request* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct evdns_request*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 struct request* FUNC8 (struct evdns_base*,struct evdns_request*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC9 (struct request*) ; 

struct evdns_request *
FUNC10(struct evdns_base *base, const struct in_addr *in, int flags, evdns_callback_type callback, void *ptr) {
	char buf[32];
	struct evdns_request *handle;
	struct request *req;
	u32 a;
	FUNC2(in);
	a = FUNC7(in->s_addr);
	FUNC3(buf, sizeof(buf), "%d.%d.%d.%d.in-addr.arpa",
			(int)(u8)((a	)&0xff),
			(int)(u8)((a>>8 )&0xff),
			(int)(u8)((a>>16)&0xff),
			(int)(u8)((a>>24)&0xff));
	handle = FUNC5(1, sizeof(*handle));
	if (handle == NULL)
		return NULL;
	FUNC4(EVDNS_LOG_DEBUG, "Resolve requested for %s (reverse)", buf);
	FUNC0(base);
	req = FUNC8(base, handle, TYPE_PTR, buf, flags, callback, ptr);
	if (req)
		FUNC9(req);
	if (handle->current_req == NULL) {
		FUNC6(handle);
		handle = NULL;
	}
	FUNC1(base);
	return (handle);
}