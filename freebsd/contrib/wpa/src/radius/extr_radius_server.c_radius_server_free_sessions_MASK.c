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
struct radius_session {struct radius_session* next; } ;
struct radius_server_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radius_server_data*,struct radius_session*) ; 

__attribute__((used)) static void FUNC1(struct radius_server_data *data,
					struct radius_session *sessions)
{
	struct radius_session *session, *prev;

	session = sessions;
	while (session) {
		prev = session;
		session = session->next;
		FUNC0(data, prev);
	}
}