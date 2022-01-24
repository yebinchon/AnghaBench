#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct x509_certificate {int /*<<< orphan*/  issuer; scalar_t__ cert_len; } ;
struct tlsv1_client {TYPE_1__* cred; } ;
struct TYPE_2__ {int /*<<< orphan*/  trusted_certs; struct x509_certificate* cert; } ;

/* Variables and functions */
 struct x509_certificate* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct x509_certificate*) ; 

__attribute__((used)) static size_t FUNC2(struct tlsv1_client *conn)
{
	size_t len = 0;
	struct x509_certificate *cert;

	if (conn->cred == NULL)
		return 0;

	cert = conn->cred->cert;
	while (cert) {
		len += 3 + cert->cert_len;
		if (FUNC1(cert))
			break;
		cert = FUNC0(conn->cred->trusted_certs,
						    &cert->issuer);
	}

	return len;
}