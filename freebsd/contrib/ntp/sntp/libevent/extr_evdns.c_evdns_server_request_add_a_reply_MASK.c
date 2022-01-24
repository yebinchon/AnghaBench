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
struct evdns_server_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLASS_INET ; 
 int /*<<< orphan*/  EVDNS_ANSWER_SECTION ; 
 int /*<<< orphan*/  TYPE_A ; 
 int FUNC0 (struct evdns_server_request*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,void const*) ; 

int
FUNC1(struct evdns_server_request *req, const char *name, int n, const void *addrs, int ttl)
{
	return FUNC0(
		  req, EVDNS_ANSWER_SECTION, name, TYPE_A, CLASS_INET,
		  ttl, n*4, 0, addrs);
}