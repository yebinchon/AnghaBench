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
struct parse {scalar_t__ ssize; scalar_t__ slen; scalar_t__ strip; } ;
typedef  scalar_t__ sopno ;
typedef  int /*<<< orphan*/  sop ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct parse*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 

__attribute__((used)) static sopno			/* start of duplicate */
FUNC4(struct parse *p,
    sopno start,		/* from here */
    sopno finish)		/* to this less one */
{
	sopno ret = FUNC0();
	sopno len = finish - start;

	FUNC1(finish >= start);
	if (len == 0)
		return(ret);
	FUNC2(p, p->ssize + len);	/* this many unexpected additions */
	FUNC1(p->ssize >= p->slen + len);
	(void) FUNC3((char *)(p->strip + p->slen),
		(char *)(p->strip + start), (size_t)len*sizeof(sop));
	p->slen += len;
	return(ret);
}