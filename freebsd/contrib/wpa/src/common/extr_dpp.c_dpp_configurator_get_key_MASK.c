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
struct dpp_configurator {int /*<<< orphan*/  csign; } ;
typedef  int /*<<< orphan*/  EC_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char**) ; 
 int FUNC4 (char*,size_t,unsigned char*,int) ; 

int FUNC5(const struct dpp_configurator *conf, char *buf,
			     size_t buflen)
{
	EC_KEY *eckey;
	int key_len, ret = -1;
	unsigned char *key = NULL;

	if (!conf->csign)
		return -1;

	eckey = FUNC1(conf->csign);
	if (!eckey)
		return -1;

	key_len = FUNC3(eckey, &key);
	if (key_len > 0)
		ret = FUNC4(buf, buflen, key, key_len);

	FUNC0(eckey);
	FUNC2(key);
	return ret;
}