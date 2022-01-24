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
struct tls_connection {int /*<<< orphan*/ * engine; int /*<<< orphan*/ * private_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(struct tls_connection *conn)
{
#if defined(ANDROID) || !defined(OPENSSL_NO_ENGINE)
	FUNC2(MSG_DEBUG, "ENGINE: engine deinit");
	if (conn->private_key) {
		FUNC1(conn->private_key);
		conn->private_key = NULL;
	}
	if (conn->engine) {
#if !defined(OPENSSL_IS_BORINGSSL)
		FUNC0(conn->engine);
#endif /* !OPENSSL_IS_BORINGSSL */
		conn->engine = NULL;
	}
#endif /* ANDROID || !OPENSSL_NO_ENGINE */
}