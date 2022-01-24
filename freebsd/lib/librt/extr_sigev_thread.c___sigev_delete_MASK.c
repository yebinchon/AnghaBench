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
struct sigev_node {int dummy; } ;
typedef  int /*<<< orphan*/  sigev_id_t ;

/* Variables and functions */
 int FUNC0 (struct sigev_node*) ; 
 struct sigev_node* FUNC1 (int,int /*<<< orphan*/ ) ; 

int
FUNC2(int type, sigev_id_t id)
{
	struct sigev_node *sn;

	sn = FUNC1(type, id);
	if (sn != NULL)
		return (FUNC0(sn));
	return (0);
}