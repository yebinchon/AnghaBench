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
struct tls_connection {int /*<<< orphan*/  peer_cert; } ;
typedef  int /*<<< orphan*/  ASN1_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,int /*<<< orphan*/ ,int) ; 

char * FUNC5(void *tls_ctx,
				      struct tls_connection *conn)
{
	ASN1_INTEGER *ser;
	char *serial_num;
	size_t len;

	if (!conn->peer_cert)
		return NULL;

	ser = FUNC2(conn->peer_cert);
	if (!ser)
		return NULL;

	len = FUNC1(ser) * 2 + 1;
	serial_num = FUNC3(len);
	if (!serial_num)
		return NULL;
	FUNC4(serial_num, len,
				   FUNC0(ser),
				   FUNC1(ser));
	return serial_num;
}