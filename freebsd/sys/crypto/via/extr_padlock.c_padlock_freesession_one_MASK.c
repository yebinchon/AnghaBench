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
struct padlock_softc {int dummy; } ;
struct padlock_session {int /*<<< orphan*/  ses_fpu_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct padlock_session*) ; 

__attribute__((used)) static void
FUNC2(struct padlock_softc *sc, struct padlock_session *ses)
{

	FUNC1(ses);
	FUNC0(ses->ses_fpu_ctx);
}