#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/ * addr; struct TYPE_11__* next; } ;
struct TYPE_8__ {int /*<<< orphan*/ * saddr; } ;
struct TYPE_9__ {TYPE_1__ hp_hdr; } ;
struct TYPE_10__ {TYPE_2__ rmp; } ;
typedef  TYPE_3__ RMPCONN ;
typedef  TYPE_4__ CLIENT ;

/* Variables and functions */
 TYPE_4__* Clients ; 
 int /*<<< orphan*/  RMP_ADDRLEN ; 
 scalar_t__ FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 

CLIENT *
FUNC1(RMPCONN *rconn)
{
	CLIENT *ctmp;

	for (ctmp = Clients; ctmp != NULL; ctmp = ctmp->next)
		if (FUNC0((char *)&rconn->rmp.hp_hdr.saddr[0],
		         (char *)&ctmp->addr[0], RMP_ADDRLEN) == 0)
			break;

	return(ctmp);
}