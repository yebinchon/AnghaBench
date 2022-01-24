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
struct http_client {scalar_t__ sd; int /*<<< orphan*/  req; int /*<<< orphan*/  hread; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_TYPE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct http_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  http_client_timeout ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct http_client*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct http_client *c)
{
	if (c == NULL)
		return;
	FUNC3(c->hread);
	FUNC5(c->req);
	if (c->sd >= 0) {
		FUNC2(c->sd, EVENT_TYPE_WRITE);
		FUNC0(c->sd);
	}
	FUNC1(http_client_timeout, c, NULL);
	FUNC4(c);
}