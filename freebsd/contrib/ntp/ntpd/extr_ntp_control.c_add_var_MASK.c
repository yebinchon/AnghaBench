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
typedef  int u_short ;
typedef  int /*<<< orphan*/  u_long ;
struct ctl_var {int code; char* text; int flags; } ;

/* Variables and functions */
 int EOV ; 
 int FUNC0 (struct ctl_var*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 struct ctl_var* FUNC2 (struct ctl_var*,int) ; 

char *
FUNC3(
	struct ctl_var **kv,
	u_long size,
	u_short def
	)
{
	u_short		c;
	struct ctl_var *k;
	char *		buf;

	c = FUNC0(*kv);
	*kv  = FUNC2(*kv, (c + 2) * sizeof(**kv));
	k = *kv;
	buf = FUNC1(size);
	k[c].code  = c;
	k[c].text  = buf;
	k[c].flags = def;
	k[c + 1].code  = 0;
	k[c + 1].text  = NULL;
	k[c + 1].flags = EOV;

	return buf;
}