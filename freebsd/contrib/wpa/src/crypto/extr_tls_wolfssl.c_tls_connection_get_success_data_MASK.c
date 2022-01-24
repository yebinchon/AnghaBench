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
struct tls_connection {int /*<<< orphan*/  ssl; } ;
typedef  int /*<<< orphan*/  WOLFSSL_SESSION ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  tls_ex_idx_session ; 
 struct wpabuf const* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

const struct wpabuf *
FUNC3(struct tls_connection *conn)
{
	WOLFSSL_SESSION *sess;

	FUNC2(MSG_DEBUG, "wolfSSL: Get success data");

	sess = FUNC1(conn->ssl);
	if (!sess)
		return NULL;
	return FUNC0(sess, tls_ex_idx_session);
}