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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 unsigned char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf const*) ; 

__attribute__((used)) static void FUNC5(FILE *f, const char *subject,
				  const struct wpabuf *cert)
{
	unsigned char *encoded;

	encoded = FUNC0(FUNC3(cert), FUNC4(cert), NULL);
	if (encoded == NULL)
		return;
	FUNC1(f, "%s\n-----BEGIN CERTIFICATE-----\n%s"
		"-----END CERTIFICATE-----\n\n", subject, encoded);
	FUNC2(encoded);
}