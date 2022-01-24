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
typedef  int /*<<< orphan*/  SSL_SESSION ;
typedef  int /*<<< orphan*/  SSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 struct wpabuf* FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ tls_ex_idx_session ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct wpabuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*) ; 

__attribute__((used)) static void FUNC4(SSL_CTX *ctx, SSL_SESSION *sess)
{
	struct wpabuf *buf;

	if (tls_ex_idx_session < 0)
		return;
	buf = FUNC0(sess, tls_ex_idx_session);
	if (!buf)
		return;
	FUNC2(MSG_DEBUG,
		   "OpenSSL: Free application session data %p (sess %p)",
		   buf, sess);
	FUNC3(buf);

	FUNC1(sess, tls_ex_idx_session, NULL);
}