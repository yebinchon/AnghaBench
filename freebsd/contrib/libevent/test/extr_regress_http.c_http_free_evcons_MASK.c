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
struct evhttp_connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evhttp_connection*) ; 
 int /*<<< orphan*/  FUNC1 (struct evhttp_connection**) ; 

__attribute__((used)) static void
FUNC2(struct evhttp_connection **evcons)
{
	struct evhttp_connection *evcon, **orig = evcons;

	if (!evcons)
		return;

	while ((evcon = *evcons++)) {
		FUNC0(evcon);
	}
	FUNC1(orig);
}