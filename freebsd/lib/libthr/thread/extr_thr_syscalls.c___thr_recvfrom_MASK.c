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
struct sockaddr {int dummy; } ;
struct pthread {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 int FUNC0 (int,void*,size_t,int,struct sockaddr*,int /*<<< orphan*/ *) ; 
 struct pthread* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC3 (struct pthread*,int) ; 

__attribute__((used)) static ssize_t
FUNC4(int s, void *b, size_t l, int f, struct sockaddr *from,
    socklen_t *fl)
{
	struct pthread *curthread;
	ssize_t ret;

	curthread = FUNC1();
	FUNC2(curthread);
	ret = FUNC0(s, b, l, f, from, fl);
	FUNC3(curthread, ret == -1);
	return (ret);
}