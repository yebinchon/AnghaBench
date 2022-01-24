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
struct fst_session {int /*<<< orphan*/  stt_armed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FST_DEFAULT_SESSION_TIMEOUT_TU ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct fst_session*) ; 
 int /*<<< orphan*/  fst_session_timeout_handler ; 

__attribute__((used)) static void FUNC2(struct fst_session *s)
{
	/* Action frames sometimes get delayed. Use relaxed timeout (2*) */
	FUNC1(0, 2 * FUNC0(FST_DEFAULT_SESSION_TIMEOUT_TU),
			       fst_session_timeout_handler, NULL, s);
	s->stt_armed = TRUE;
}