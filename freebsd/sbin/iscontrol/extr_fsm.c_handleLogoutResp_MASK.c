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
struct TYPE_3__ {int flags; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ isess_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISCSISTOP ; 
 int SESS_DISCONNECT ; 
 int T13 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int
FUNC2(isess_t *sess, pdu_t *pp)
{
     if(sess->flags & SESS_DISCONNECT) {
	  int val = 0;
	  if(FUNC0(sess->fd, ISCSISTOP, &val)) {
	       FUNC1("ISCSISTOP");
	  }
	  return 0;
     }
     return T13;
}