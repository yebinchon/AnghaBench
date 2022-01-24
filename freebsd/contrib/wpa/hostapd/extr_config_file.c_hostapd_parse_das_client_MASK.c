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
struct hostapd_bss_config {int /*<<< orphan*/  radius_das_shared_secret_len; int /*<<< orphan*/ * radius_das_shared_secret; int /*<<< orphan*/  radius_das_client_addr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*,char) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct hostapd_bss_config *bss, char *val)
{
	char *secret;

	secret = FUNC2(val, ' ');
	if (secret == NULL)
		return -1;

	*secret++ = '\0';

	if (FUNC0(val, &bss->radius_das_client_addr))
		return -1;

	FUNC1(bss->radius_das_shared_secret);
	bss->radius_das_shared_secret = (u8 *) FUNC3(secret);
	if (bss->radius_das_shared_secret == NULL)
		return -1;
	bss->radius_das_shared_secret_len = FUNC4(secret);

	return 0;
}