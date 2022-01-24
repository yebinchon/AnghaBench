#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* res_state ;
struct TYPE_3__ {int options; } ;

/* Variables and functions */
 int RES_DEBUG ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 

__attribute__((used)) static void
FUNC1(char *msg, int num, res_state res)
{
	if (res->options & RES_DEBUG) {
		int save = errno;

		FUNC0(msg, num);
		errno = save;
	}
}