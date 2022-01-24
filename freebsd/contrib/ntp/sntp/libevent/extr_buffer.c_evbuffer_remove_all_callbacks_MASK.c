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
struct evbuffer_cb_entry {int dummy; } ;
struct evbuffer {int /*<<< orphan*/  callbacks; } ;

/* Variables and functions */
 struct evbuffer_cb_entry* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer_cb_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct evbuffer_cb_entry*) ; 
 int /*<<< orphan*/  next ; 

__attribute__((used)) static void
FUNC3(struct evbuffer *buffer)
{
	struct evbuffer_cb_entry *cbent;

	while ((cbent = FUNC0(&buffer->callbacks))) {
		FUNC1(cbent, next);
		FUNC2(cbent);
	}
}