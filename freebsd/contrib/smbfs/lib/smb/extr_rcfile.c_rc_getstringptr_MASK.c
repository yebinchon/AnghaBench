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
struct rcsection {int dummy; } ;
struct rckey {char* rk_value; } ;
struct rcfile {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 struct rcsection* FUNC0 (struct rcfile*,char const*) ; 
 struct rckey* FUNC1 (struct rcsection*,char const*) ; 

int
FUNC2(struct rcfile *rcp, const char *section, const char *key,
	char **dest)
{
	struct rcsection *rsp;
	struct rckey *rkp;
	
	*dest = NULL;
	rsp = FUNC0(rcp, section);
	if (!rsp) return ENOENT;
	rkp = FUNC1(rsp,key);
	if (!rkp) return ENOENT;
	*dest = rkp->rk_value;
	return 0;
}