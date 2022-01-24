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
struct sock_list {scalar_t__ len; int /*<<< orphan*/  addr; } ;
typedef  enum verbosity_value { ____Placeholder_verbosity_value } verbosity_value ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char const*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 

__attribute__((used)) static void
FUNC2(enum verbosity_value v, const char* s, struct sock_list* p)
{
	if(p->len)
		FUNC0(v, s, &p->addr, p->len);
	else	FUNC1(v, "%s cache", s);
}