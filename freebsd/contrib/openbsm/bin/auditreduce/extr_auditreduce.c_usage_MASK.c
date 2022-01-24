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

/* Variables and functions */
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(const char *msg)
{
	FUNC1(stderr, "%s\n", msg);
	FUNC1(stderr, "Usage: auditreduce [options] [file ...]\n");
	FUNC1(stderr, "\tOptions are : \n");
	FUNC1(stderr, "\t-A : all records\n");
	FUNC1(stderr, "\t-a YYYYMMDD[HH[[MM[SS]]] : after date\n");
	FUNC1(stderr, "\t-b YYYYMMDD[HH[[MM[SS]]] : before date\n");
	FUNC1(stderr, "\t-c <flags> : matching class\n");
	FUNC1(stderr, "\t-d YYYYMMDD : on date\n");
	FUNC1(stderr, "\t-e <uid|name>  : effective user\n");
	FUNC1(stderr, "\t-f <gid|group> : effective group\n");
	FUNC1(stderr, "\t-g <gid|group> : real group\n");
	FUNC1(stderr, "\t-j <pid> : subject id \n");
	FUNC1(stderr, "\t-m <evno|evname> : matching event\n");
	FUNC1(stderr, "\t-o objecttype=objectvalue\n");
	FUNC1(stderr, "\t\t file=<pathname>\n");
	FUNC1(stderr, "\t\t msgqid=<ID>\n");
	FUNC1(stderr, "\t\t pid=<ID>\n");
	FUNC1(stderr, "\t\t semid=<ID>\n");
	FUNC1(stderr, "\t\t shmid=<ID>\n");
	FUNC1(stderr, "\t-r <uid|name> : real user\n");
	FUNC1(stderr, "\t-u <uid|name> : audit user\n");
	FUNC1(stderr, "\t-v : select non-matching records\n");
	FUNC0(EX_USAGE);
}