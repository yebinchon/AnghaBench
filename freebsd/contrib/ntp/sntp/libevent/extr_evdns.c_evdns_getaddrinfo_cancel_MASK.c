#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ r; } ;
struct TYPE_3__ {scalar_t__ r; } ;
struct evdns_getaddrinfo_request {int user_canceled; int /*<<< orphan*/  evdns_base; TYPE_2__ ipv6_request; TYPE_1__ ipv4_request; int /*<<< orphan*/  timeout; scalar_t__ request_done; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct evdns_getaddrinfo_request *data)
{
	FUNC0(data->evdns_base);
	if (data->request_done) {
		FUNC1(data->evdns_base);
		return;
	}
	FUNC3(&data->timeout);
	data->user_canceled = 1;
	if (data->ipv4_request.r)
		FUNC2(data->evdns_base, data->ipv4_request.r);
	if (data->ipv6_request.r)
		FUNC2(data->evdns_base, data->ipv6_request.r);
	FUNC1(data->evdns_base);
}