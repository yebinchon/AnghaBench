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
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OK ; 
 int /*<<< orphan*/  EX_TEMPFAIL ; 
#define  SSL_ERROR_NONE 133 
#define  SSL_ERROR_SSL 132 
#define  SSL_ERROR_SYSCALL 131 
#define  SSL_ERROR_WANT_READ 130 
#define  SSL_ERROR_WANT_WRITE 129 
#define  SSL_ERROR_ZERO_RETURN 128 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int
FUNC4(SSL *ssl, int ret)
{
	int error;

	error = FUNC0(ssl, ret);

	switch (error) {
	case SSL_ERROR_NONE:
		return (0);
	case SSL_ERROR_WANT_READ:
		FUNC1(2, "SSL_ERROR_WANT_READ");
		return (-1);
	case SSL_ERROR_WANT_WRITE:
		FUNC1(2, "SSL_ERROR_WANT_WRITE");
		return (-1);
	case SSL_ERROR_ZERO_RETURN:
		FUNC2(EX_OK, "Connection closed.");
	case SSL_ERROR_SYSCALL:
		FUNC3();
		FUNC2(EX_TEMPFAIL, "SSL I/O error.");
	case SSL_ERROR_SSL:
		FUNC3();
		FUNC2(EX_TEMPFAIL, "SSL protocol error.");
	default:
		FUNC3();
		FUNC2(EX_TEMPFAIL, "Unknown SSL error (%d).", error);
	}
}