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
typedef  int /*<<< orphan*/  pdu_t ;
struct TYPE_3__ {int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ isess_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISCSISEND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ vflag ; 

int
FUNC3(isess_t *sess, pdu_t *pp)
{
     if(FUNC0(sess->fd, ISCSISEND, pp)) {
	  FUNC1("xmitpdu");
	  return -1;
     }
     if(vflag)
	  FUNC2("I-", pp);

     return 0;
}