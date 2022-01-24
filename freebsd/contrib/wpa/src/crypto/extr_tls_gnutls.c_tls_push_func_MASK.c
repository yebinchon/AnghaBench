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
struct tls_connection {int /*<<< orphan*/  push_buf; } ;
typedef  int ssize_t ;
typedef  scalar_t__ gnutls_transport_ptr_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void const*,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static ssize_t FUNC2(gnutls_transport_ptr_t ptr, const void *buf,
			     size_t len)
{
	struct tls_connection *conn = (struct tls_connection *) ptr;

	if (FUNC1(&conn->push_buf, len) < 0) {
		errno = ENOMEM;
		return -1;
	}
	FUNC0(conn->push_buf, buf, len);

	return len;
}