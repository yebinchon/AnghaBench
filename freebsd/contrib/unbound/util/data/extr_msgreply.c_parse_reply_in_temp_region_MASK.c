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
struct reply_info {int dummy; } ;
struct regional {int dummy; } ;
struct query_info {int dummy; } ;
struct msg_parse {int dummy; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct msg_parse*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct msg_parse*,int /*<<< orphan*/ *,struct query_info*,struct reply_info**,struct regional*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct msg_parse*,struct regional*) ; 
 struct msg_parse* FUNC3 (struct regional*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct reply_info*
FUNC5(sldns_buffer* pkt, struct regional* region,
	struct query_info* qi)
{
	struct reply_info* rep;
	struct msg_parse* msg;
	if(!(msg = FUNC3(region, sizeof(*msg)))) {
		return NULL;
	}
	FUNC0(msg, 0, sizeof(*msg));
	FUNC4(pkt, 0);
	if(FUNC2(pkt, msg, region) != 0){
		return 0;
	}
	if(!FUNC1(pkt, msg, NULL, qi, &rep, region)) {
		return 0;
	}
	return rep;
}