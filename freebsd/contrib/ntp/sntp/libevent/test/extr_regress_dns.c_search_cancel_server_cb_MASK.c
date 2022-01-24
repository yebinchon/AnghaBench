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
struct evdns_server_request {int nquestions; TYPE_1__** questions; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  current_req ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct evdns_server_request*,int) ; 
 scalar_t__ request_count ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(struct evdns_server_request *req, void *data)
{
	const char *question;

	if (req->nquestions != 1)
		FUNC1(("Only handling one question at a time; got %d",
			req->nquestions));

	question = req->questions[0]->name;

	FUNC0(("got question, %s", question));

	FUNC4(request_count > 0);
	FUNC4(!FUNC3(req, 3));

	if (!--request_count)
		FUNC2(NULL, current_req);

end:
	;
}