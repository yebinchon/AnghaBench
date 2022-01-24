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
typedef  int /*<<< orphan*/  u_int32 ;
struct req_pkt {int dummy; } ;
struct info_auth {void* timereset; void* expired; void* keyuncached; void* decryptions; void* encryptions; void* keynotfound; void* keylookups; void* numfreekeys; void* numkeys; } ;
typedef  int /*<<< orphan*/  sockaddr_u ;
typedef  int /*<<< orphan*/  endpt ;

/* Variables and functions */
 scalar_t__ auth_timereset ; 
 scalar_t__ authdecryptions ; 
 scalar_t__ authencryptions ; 
 scalar_t__ authkeyexpired ; 
 scalar_t__ authkeylookups ; 
 scalar_t__ authkeynotfound ; 
 scalar_t__ authkeyuncached ; 
 scalar_t__ authnumfreekeys ; 
 scalar_t__ authnumkeys ; 
 scalar_t__ current_time ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct req_pkt*,int) ; 

__attribute__((used)) static void
FUNC4(
	sockaddr_u *srcadr,
	endpt *inter,
	struct req_pkt *inpkt
	)
{
	register struct info_auth *ia;

	ia = (struct info_auth *)FUNC3(srcadr, inter, inpkt,
					     sizeof(struct info_auth));

	ia->numkeys = FUNC1((u_int32)authnumkeys);
	ia->numfreekeys = FUNC1((u_int32)authnumfreekeys);
	ia->keylookups = FUNC1((u_int32)authkeylookups);
	ia->keynotfound = FUNC1((u_int32)authkeynotfound);
	ia->encryptions = FUNC1((u_int32)authencryptions);
	ia->decryptions = FUNC1((u_int32)authdecryptions);
	ia->keyuncached = FUNC1((u_int32)authkeyuncached);
	ia->expired = FUNC1((u_int32)authkeyexpired);
	ia->timereset = FUNC1((u_int32)(current_time - auth_timereset));
	
	(void) FUNC2();
	FUNC0();
}