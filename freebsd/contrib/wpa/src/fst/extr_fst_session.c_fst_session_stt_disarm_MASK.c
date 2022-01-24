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
struct fst_session {scalar_t__ stt_armed; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct fst_session*) ; 
 int /*<<< orphan*/  fst_session_timeout_handler ; 

__attribute__((used)) static void FUNC1(struct fst_session *s)
{
	if (s->stt_armed) {
		FUNC0(fst_session_timeout_handler, NULL, s);
		s->stt_armed = FALSE;
	}
}