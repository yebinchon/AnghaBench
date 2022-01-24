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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct ctx_query {TYPE_1__* res; scalar_t__ querynum; } ;
struct TYPE_2__ {int /*<<< orphan*/  qname; scalar_t__ qclass; scalar_t__ qtype; } ;

/* Variables and functions */
 int UB_LIBCMD_NEWQUERY ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

uint8_t* 
FUNC4(struct ctx_query* q, uint32_t* len)
{
	/* format for new query is
	 * 	o uint32 cmd
	 * 	o uint32 id
	 * 	o uint32 type
	 * 	o uint32 class
	 * 	o rest queryname (string)
	 */
	uint8_t* p;
	size_t slen = FUNC3(q->res->qname) + 1/*end of string*/;
	*len = sizeof(uint32_t)*4 + slen;
	p = (uint8_t*)FUNC0(*len);
	if(!p) return NULL;
	FUNC2(p, UB_LIBCMD_NEWQUERY);
	FUNC2(p+sizeof(uint32_t), (uint32_t)q->querynum);
	FUNC2(p+2*sizeof(uint32_t), (uint32_t)q->res->qtype);
	FUNC2(p+3*sizeof(uint32_t), (uint32_t)q->res->qclass);
	FUNC1(p+4*sizeof(uint32_t), q->res->qname, slen);
	return p;
}