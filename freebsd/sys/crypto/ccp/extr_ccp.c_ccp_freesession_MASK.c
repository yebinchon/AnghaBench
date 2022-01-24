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
struct ccp_session {scalar_t__ pending; int active; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  crypto_session_t ;

/* Variables and functions */
 struct ccp_session* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct ccp_session*,scalar_t__) ; 

__attribute__((used)) static void
FUNC2(device_t dev, crypto_session_t cses)
{
	struct ccp_session *s;

	s = FUNC0(cses);

	if (s->pending != 0)
		FUNC1(dev,
		    "session %p freed with %d pending requests\n", s,
		    s->pending);
	s->active = false;
}