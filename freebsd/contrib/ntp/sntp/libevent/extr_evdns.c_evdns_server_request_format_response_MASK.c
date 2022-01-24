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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct TYPE_4__ {int flags; int nquestions; TYPE_1__** questions; } ;
struct server_request {int trans_id; int n_answer; int n_authority; int n_additional; int response_len; unsigned char* response; struct server_reply_item* additional; struct server_reply_item* authority; struct server_reply_item* answer; TYPE_2__ base; } ;
struct server_reply_item {char const* name; int type; int dns_question_class; char const* data; int datalen; struct server_reply_item* next; scalar_t__ is_name; int /*<<< orphan*/  ttl; } ;
struct dnslabel_table {int dummy; } ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_3__ {char* name; int type; int dns_question_class; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dnslabel_table*) ; 
 int /*<<< orphan*/  FUNC3 (struct dnslabel_table*) ; 
 int FUNC4 (unsigned char*,size_t,int,char const*,int /*<<< orphan*/ ,struct dnslabel_table*) ; 
 int FUNC5 (short) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,...) ; 
 unsigned char* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct server_request*) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 

__attribute__((used)) static int
FUNC10(struct server_request *req, int err)
{
	unsigned char buf[1500];
	size_t buf_len = sizeof(buf);
	off_t j = 0, r;
	u16 t_;
	u32 t32_;
	int i;
	u16 flags;
	struct dnslabel_table table;

	if (err < 0 || err > 15) return -1;

	/* Set response bit and error code; copy OPCODE and RD fields from
	 * question; copy RA and AA if set by caller. */
	flags = req->base.flags;
	flags |= (0x8000 | err);

	FUNC3(&table);
	FUNC0(req->trans_id);
	FUNC0(flags);
	FUNC0(req->base.nquestions);
	FUNC0(req->n_answer);
	FUNC0(req->n_authority);
	FUNC0(req->n_additional);

	/* Add questions. */
	for (i=0; i < req->base.nquestions; ++i) {
		const char *s = req->base.questions[i]->name;
		j = FUNC4(buf, buf_len, j, s, FUNC9(s), &table);
		if (j < 0) {
			FUNC2(&table);
			return (int) j;
		}
		FUNC0(req->base.questions[i]->type);
		FUNC0(req->base.questions[i]->dns_question_class);
	}

	/* Add answer, authority, and additional sections. */
	for (i=0; i<3; ++i) {
		struct server_reply_item *item;
		if (i==0)
			item = req->answer;
		else if (i==1)
			item = req->authority;
		else
			item = req->additional;
		while (item) {
			r = FUNC4(buf, buf_len, j, item->name, FUNC9(item->name), &table);
			if (r < 0)
				goto overflow;
			j = r;

			FUNC0(item->type);
			FUNC0(item->dns_question_class);
			FUNC1(item->ttl);
			if (item->is_name) {
				off_t len_idx = j, name_start;
				j += 2;
				name_start = j;
				r = FUNC4(buf, buf_len, j, item->data, FUNC9(item->data), &table);
				if (r < 0)
					goto overflow;
				j = r;
				t_ = FUNC5( (short) (j-name_start) );
				FUNC6(buf+len_idx, &t_, 2);
			} else {
				FUNC0(item->datalen);
				if (j+item->datalen > (off_t)buf_len)
					goto overflow;
				FUNC6(buf+j, item->data, item->datalen);
				j += item->datalen;
			}
			item = item->next;
		}
	}

	if (j > 512) {
overflow:
		j = 512;
		buf[2] |= 0x02; /* set the truncated bit. */
	}

	req->response_len = j;

	if (!(req->response = FUNC7(req->response_len))) {
		FUNC8(req);
		FUNC2(&table);
		return (-1);
	}
	FUNC6(req->response, buf, req->response_len);
	FUNC8(req);
	FUNC2(&table);
	return (0);
}