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
typedef  int /*<<< orphan*/  OpenPGP_key ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/ * FUNC1 (unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC3 (char const*,size_t*) ; 

OpenPGP_key *
FUNC4(const char *kfile)
{
	unsigned char *data = NULL;
	size_t n;
	OpenPGP_key *key;

	data = FUNC3(kfile, &n);
	key = FUNC1(data, n);
	FUNC0(data);
	FUNC2(key);
	return (key);
}