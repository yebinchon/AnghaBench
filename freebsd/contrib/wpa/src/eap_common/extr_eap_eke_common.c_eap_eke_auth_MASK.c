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
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct eap_eke_session {int /*<<< orphan*/  auth_len; int /*<<< orphan*/  ka; int /*<<< orphan*/  prf; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf const*) ; 

int FUNC7(struct eap_eke_session *sess, const char *label,
		 const struct wpabuf *msgs, u8 *auth)
{
	FUNC4(MSG_DEBUG, "EAP-EKE: Auth(%s)", label);
	FUNC3(MSG_DEBUG, "EAP-EKE: Ka for Auth",
			sess->ka, sess->auth_len);
	FUNC2(MSG_MSGDUMP, "EAP-EKE: Messages for Auth", msgs);
	return FUNC0(sess->prf, sess->ka, sess->auth_len,
			   (const u8 *) label, FUNC1(label),
			   FUNC5(msgs), FUNC6(msgs), auth);
}