#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct in_addr {void* s_addr; } ;
struct in6_addr {int* s6_addr; } ;
struct evdns_server_request {int nquestions; TYPE_1__** questions; } ;
typedef  int /*<<< orphan*/  ans6 ;
struct TYPE_2__ {int type; int dns_question_class; char* name; } ;

/* Variables and functions */
 int const EVDNS_CLASS_INET ; 
 int const EVDNS_TYPE_A ; 
 int const EVDNS_TYPE_AAAA ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct evdns_server_request*,char const*,int,void**,int) ; 
 int /*<<< orphan*/  FUNC4 (struct evdns_server_request*,char const*,int,int**,int) ; 
 int /*<<< orphan*/  FUNC5 (struct evdns_server_request*,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct evdns_server_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct evdns_server_request*,int) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 
 void* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct in6_addr*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC11(struct evdns_server_request *req, void *data)
{
	int i;
	int *n_got_p=data;
	int added_any=0;
	++*n_got_p;

	for (i=0;i<req->nquestions;++i) {
		const int qtype = req->questions[i]->type;
		const int qclass = req->questions[i]->dns_question_class;
		const char *qname = req->questions[i]->name;
		struct in_addr ans;
		struct in6_addr ans6;
		FUNC10(&ans6, 0, sizeof(ans6));

		FUNC0(("Got question about %s, type=%d", qname, qtype));

		if (qtype == EVDNS_TYPE_A &&
		    qclass == EVDNS_CLASS_INET &&
		    !FUNC8(qname, "nobodaddy.example.com")) {
			ans.s_addr = FUNC9(0x7f000001);
			FUNC3(req, qname,
			    1, &ans.s_addr, 2000);
			added_any = 1;
		} else if (!FUNC8(qname,
			"nosuchplace.example.com")) {
			/* ok, just say notfound. */
		} else if (!FUNC8(qname,
			"both.example.com")) {
			if (qtype == EVDNS_TYPE_A) {
				ans.s_addr = FUNC9(0x50502020);
				FUNC3(req, qname,
				    1, &ans.s_addr, 2000);
				added_any = 1;
			} else if (qtype == EVDNS_TYPE_AAAA) {
				ans6.s6_addr[0] = 0x80;
				ans6.s6_addr[1] = 0xff;
				ans6.s6_addr[14] = 0xbb;
				ans6.s6_addr[15] = 0xbb;
				FUNC4(req, qname,
				    1, &ans6.s6_addr, 2000);
				added_any = 1;
			}
			FUNC5(req, qname,
			    "both-canonical.example.com", 1000);
		} else if (!FUNC8(qname,
			"v4only.example.com") ||
		    !FUNC8(qname, "v4assert.example.com")) {
			if (qtype == EVDNS_TYPE_A) {
				ans.s_addr = FUNC9(0x12345678);
				FUNC3(req, qname,
				    1, &ans.s_addr, 2000);
				added_any = 1;
			} else if (!FUNC8(qname,
				"v4assert.example.com")) {
				FUNC1(("Got an AAAA request for v4assert"));
			}
		} else if (!FUNC8(qname,
			"v6only.example.com") ||
		    !FUNC8(qname, "v6assert.example.com")) {
			if (qtype == EVDNS_TYPE_AAAA) {
				ans6.s6_addr[0] = 0x0b;
				ans6.s6_addr[1] = 0x0b;
				ans6.s6_addr[14] = 0xf0;
				ans6.s6_addr[15] = 0x0d;
				FUNC4(req, qname,
				    1, &ans6.s6_addr, 2000);
				added_any = 1;
			}  else if (!FUNC8(qname,
				"v6assert.example.com")) {
				FUNC1(("Got a A request for v6assert"));
			}
		} else if (!FUNC8(qname,
			"v6timeout.example.com")) {
			if (qtype == EVDNS_TYPE_A) {
				ans.s_addr = FUNC9(0xabcdef01);
				FUNC3(req, qname,
				    1, &ans.s_addr, 2000);
				added_any = 1;
			} else if (qtype == EVDNS_TYPE_AAAA) {
				/* Let the v6 request time out.*/
				FUNC6(req);
				return;
			}
		} else if (!FUNC8(qname,
			"v4timeout.example.com")) {
			if (qtype == EVDNS_TYPE_AAAA) {
				ans6.s6_addr[0] = 0x0a;
				ans6.s6_addr[1] = 0x0a;
				ans6.s6_addr[14] = 0xff;
				ans6.s6_addr[15] = 0x01;
				FUNC4(req, qname,
				    1, &ans6.s6_addr, 2000);
				added_any = 1;
			} else if (qtype == EVDNS_TYPE_A) {
				/* Let the v4 request time out.*/
				FUNC6(req);
				return;
			}
		} else if (!FUNC8(qname,
			"v6timeout-nonexist.example.com")) {
			if (qtype == EVDNS_TYPE_A) {
				/* Fall through, give an nexist. */
			} else if (qtype == EVDNS_TYPE_AAAA) {
				/* Let the v6 request time out.*/
				FUNC6(req);
				return;
			}
		} else if (!FUNC8(qname,
			"all-timeout.example.com")) {
			/* drop all requests */
			FUNC6(req);
			return;
		} else {
			FUNC2(("Got weird request for %s",qname));
		}
	}
	if (added_any) {
		FUNC0(("answering"));
		FUNC7(req, 0);
	} else {
		FUNC0(("saying nexist."));
		FUNC7(req, 3);
	}
}