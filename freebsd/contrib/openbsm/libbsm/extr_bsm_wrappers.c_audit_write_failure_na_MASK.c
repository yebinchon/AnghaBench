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
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  au_tid_t ;

/* Variables and functions */
 int FUNC0 (short,char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

int
FUNC1(short event_code, char *errmsg, int errret, uid_t euid,
    uid_t egid, pid_t pid, au_tid_t *tid)
{

	return (FUNC0(event_code, errmsg, errret, -1, euid,
	    egid, -1, -1, pid, -1, tid));
}