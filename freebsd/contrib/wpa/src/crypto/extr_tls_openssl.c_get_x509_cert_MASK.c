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
typedef  int /*<<< orphan*/  X509 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 struct wpabuf* FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (struct wpabuf*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC3(X509 *cert)
{
	struct wpabuf *buf;
	u8 *tmp;

	int cert_len = FUNC0(cert, NULL);
	if (cert_len <= 0)
		return NULL;

	buf = FUNC1(cert_len);
	if (buf == NULL)
		return NULL;

	tmp = FUNC2(buf, cert_len);
	FUNC0(cert, &tmp);
	return buf;
}