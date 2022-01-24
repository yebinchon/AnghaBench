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
struct sbuf {int dummy; } ;
struct ccb_ataio {int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*,char*,int /*<<< orphan*/ ) ; 

int
FUNC3(struct ccb_ataio *ataio, struct sbuf *sb)
{

	FUNC2(sb, "%s. ACB: ",
	    FUNC1(&ataio->cmd));
	FUNC0(&ataio->cmd, sb);

	return(0);
}