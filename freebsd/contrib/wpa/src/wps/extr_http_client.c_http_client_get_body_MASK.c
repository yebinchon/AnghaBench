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
struct wpabuf {int dummy; } ;
struct http_client {struct wpabuf body; int /*<<< orphan*/ * hread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct wpabuf * FUNC3(struct http_client *c)
{
	if (c->hread == NULL)
		return NULL;
	FUNC2(&c->body, FUNC0(c->hread),
		   FUNC1(c->hread));
	return &c->body;
}