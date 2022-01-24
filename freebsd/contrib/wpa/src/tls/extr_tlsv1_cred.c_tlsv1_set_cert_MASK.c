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
struct tlsv1_credentials {int /*<<< orphan*/  cert; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*,size_t) ; 

int FUNC1(struct tlsv1_credentials *cred, const char *cert,
		   const u8 *cert_blob, size_t cert_blob_len)
{
	return FUNC0(&cred->cert, cert,
				    cert_blob, cert_blob_len);
}