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
struct httpread {int /*<<< orphan*/  cookie; int /*<<< orphan*/  (* cb ) (struct httpread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  HTTPREAD_EVENT_TIMEOUT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct httpread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct httpread*) ; 

__attribute__((used)) static void FUNC2(void *eloop_data, void *user_ctx)
{
	struct httpread *h = user_ctx;
	FUNC1(MSG_DEBUG, "httpread timeout (%p)", h);
	(*h->cb)(h, h->cookie, HTTPREAD_EVENT_TIMEOUT);
}