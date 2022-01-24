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
struct cached_connection_ {int dummy; } ;

/* Variables and functions */
 int CET_MP_WRITE_SESSION_CLOSE_NOTIFICATION ; 
 int /*<<< orphan*/  FUNC0 (struct cached_connection_*) ; 
 int FUNC1 (struct cached_connection_*,int*,int) ; 

int
FUNC2(struct cached_connection_ *ws)
{
	int notification;
	int result;

	notification = CET_MP_WRITE_SESSION_CLOSE_NOTIFICATION;
	result = FUNC1(ws, &notification, sizeof(int));
	FUNC0(ws);
	return (0);
}