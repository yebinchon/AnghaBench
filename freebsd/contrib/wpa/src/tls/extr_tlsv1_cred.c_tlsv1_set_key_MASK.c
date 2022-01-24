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
struct tlsv1_credentials {int /*<<< orphan*/ * key; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*,size_t,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct tlsv1_credentials*,int /*<<< orphan*/  const*,size_t,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,size_t,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct tlsv1_credentials *cred,
			 const u8 *key, size_t len, const char *passwd)
{
	cred->key = FUNC0(key, len, passwd);
	if (cred->key == NULL)
		cred->key = FUNC3(key, len);
	if (cred->key == NULL)
		cred->key = FUNC2(key, len, passwd);
#ifdef PKCS12_FUNCS
	if (!cred->key)
		pkcs12_parse(cred, key, len, passwd);
#endif /* PKCS12_FUNCS */
	if (cred->key == NULL) {
		FUNC4(MSG_INFO, "TLSv1: Failed to parse private key");
		return -1;
	}
	return 0;
}