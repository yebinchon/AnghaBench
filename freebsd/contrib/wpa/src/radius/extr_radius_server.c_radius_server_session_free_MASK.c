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
struct radius_session {struct radius_session* nas_ip; struct radius_session* username; int /*<<< orphan*/  last_reply; struct radius_session* last_from_addr; int /*<<< orphan*/  last_msg; int /*<<< orphan*/  eap; } ;
struct radius_server_data {int /*<<< orphan*/  num_sess; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct radius_server_data*,struct radius_session*) ; 
 int /*<<< orphan*/  FUNC2 (struct radius_session*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  radius_server_session_remove_timeout ; 
 int /*<<< orphan*/  radius_server_session_timeout ; 

__attribute__((used)) static void FUNC4(struct radius_server_data *data,
				       struct radius_session *sess)
{
	FUNC1(radius_server_session_timeout, data, sess);
	FUNC1(radius_server_session_remove_timeout, data, sess);
	FUNC0(sess->eap);
	FUNC3(sess->last_msg);
	FUNC2(sess->last_from_addr);
	FUNC3(sess->last_reply);
	FUNC2(sess->username);
	FUNC2(sess->nas_ip);
	FUNC2(sess);
	data->num_sess--;
}