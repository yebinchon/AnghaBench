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
struct alloc_cache {int dummy; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct msg_parse*,struct reply_info*,struct regional*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct msg_parse*,struct query_info*,struct regional*) ; 
 int /*<<< orphan*/  FUNC3 (struct msg_parse*,struct reply_info**,struct regional*) ; 
 int /*<<< orphan*/  FUNC4 (struct reply_info*,struct alloc_cache*,struct regional*) ; 
 int /*<<< orphan*/  FUNC5 (struct reply_info*,struct alloc_cache*) ; 

int 
FUNC6(sldns_buffer* pkt, struct msg_parse* msg,
	struct alloc_cache* alloc, struct query_info* qinf, 
	struct reply_info** rep, struct regional* region)
{
	FUNC0(pkt && msg);
	if(!FUNC2(pkt, msg, qinf, region))
		return 0;
	if(!FUNC3(msg, rep, region))
		return 0;
	if(!FUNC4(*rep, alloc, region)) {
		if(!region) FUNC5(*rep, alloc);
		return 0;
	}
	if(!FUNC1(pkt, msg, *rep, region)) {
		if(!region) FUNC5(*rep, alloc);
		return 0;
	}
	return 1;
}