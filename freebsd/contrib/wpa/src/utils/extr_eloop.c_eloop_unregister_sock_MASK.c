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
struct eloop_sock_table {int dummy; } ;
typedef  int /*<<< orphan*/  eloop_event_type ;

/* Variables and functions */
 struct eloop_sock_table* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct eloop_sock_table*,int) ; 

void FUNC2(int sock, eloop_event_type type)
{
	struct eloop_sock_table *table;

	table = FUNC0(type);
	FUNC1(table, sock);
}