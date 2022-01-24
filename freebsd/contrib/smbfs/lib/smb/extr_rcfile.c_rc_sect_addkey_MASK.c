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
struct rcsection {int /*<<< orphan*/  rs_keys; } ;
struct rckey {void* rk_value; void* rk_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct rckey*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 struct rckey* FUNC2 (int) ; 
 struct rckey* FUNC3 (struct rcsection*,char const*) ; 
 int /*<<< orphan*/  rk_next ; 
 void* FUNC4 (char const*) ; 

__attribute__((used)) static struct rckey *
FUNC5(struct rcsection *rsp, const char *name, const char *value)
{
	struct rckey *p;

	p = FUNC3(rsp, name);
	if (p) {
		FUNC1(p->rk_value);
	} else {
		p = FUNC2(sizeof(*p));
		if (!p) return NULL;
		FUNC0(&rsp->rs_keys, p, rk_next);
		p->rk_name = FUNC4(name);
	}
	p->rk_value = value ? FUNC4(value) : FUNC4("");
	return p;
}