#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int ref; } ;
typedef  TYPE_1__ conn_t ;

/* Variables and functions */
 TYPE_1__* cached_connection ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 

__attribute__((used)) static void
FUNC2(conn_t *conn)
{
	(void)FUNC1(conn, "QUIT");
	if (conn == cached_connection && conn->ref == 1)
		cached_connection = NULL;
	FUNC0(conn);
}