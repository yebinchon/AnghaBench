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
typedef  int u16 ;
struct server_request {int n_answer; int n_authority; int n_additional; int /*<<< orphan*/  port; struct server_reply_item* additional; struct server_reply_item* authority; struct server_reply_item* answer; scalar_t__ response; } ;
struct server_reply_item {int type; int dns_question_class; int ttl; int is_name; int datalen; int /*<<< orphan*/ * data; struct server_reply_item* name; struct server_reply_item* next; } ;
struct evdns_server_request {int dummy; } ;

/* Variables and functions */
#define  EVDNS_ADDITIONAL_SECTION 130 
#define  EVDNS_ANSWER_SECTION 129 
#define  EVDNS_AUTHORITY_SECTION 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct server_request* FUNC2 (struct evdns_server_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct server_reply_item*) ; 
 void* FUNC5 (int) ; 
 void* FUNC6 (char const*) ; 

int
FUNC7(struct evdns_server_request *req_, int section, const char *name, int type, int class, int ttl, int datalen, int is_name, const char *data)
{
	struct server_request *req = FUNC2(req_);
	struct server_reply_item **itemp, *item;
	int *countp;
	int result = -1;

	FUNC0(req->port);
	if (req->response) /* have we already answered? */
		goto done;

	switch (section) {
	case EVDNS_ANSWER_SECTION:
		itemp = &req->answer;
		countp = &req->n_answer;
		break;
	case EVDNS_AUTHORITY_SECTION:
		itemp = &req->authority;
		countp = &req->n_authority;
		break;
	case EVDNS_ADDITIONAL_SECTION:
		itemp = &req->additional;
		countp = &req->n_additional;
		break;
	default:
		goto done;
	}
	while (*itemp) {
		itemp = &((*itemp)->next);
	}
	item = FUNC5(sizeof(struct server_reply_item));
	if (!item)
		goto done;
	item->next = NULL;
	if (!(item->name = FUNC6(name))) {
		FUNC4(item);
		goto done;
	}
	item->type = type;
	item->dns_question_class = class;
	item->ttl = ttl;
	item->is_name = is_name != 0;
	item->datalen = 0;
	item->data = NULL;
	if (data) {
		if (item->is_name) {
			if (!(item->data = FUNC6(data))) {
				FUNC4(item->name);
				FUNC4(item);
				goto done;
			}
			item->datalen = (u16)-1;
		} else {
			if (!(item->data = FUNC5(datalen))) {
				FUNC4(item->name);
				FUNC4(item);
				goto done;
			}
			item->datalen = datalen;
			FUNC3(item->data, data, datalen);
		}
	}

	*itemp = item;
	++(*countp);
	result = 0;
done:
	FUNC1(req->port);
	return result;
}