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
struct tls_connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (void*,struct tls_connection*,int /*<<< orphan*/ *,size_t) ; 

u8 * FUNC3(void *ssl_ctx, struct tls_connection *conn, size_t len)
{
	u8 *out;

	out = FUNC1(len);
	if (out == NULL)
		return NULL;

	if (FUNC2(ssl_ctx, conn, out, len)) {
		FUNC0(out);
		return NULL;
	}

	return out;
}