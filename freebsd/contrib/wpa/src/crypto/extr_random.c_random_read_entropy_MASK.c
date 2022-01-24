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
typedef  scalar_t__ u8 ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int RANDOM_ENTROPY_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,size_t*) ; 
 scalar_t__ own_pool_ready ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  random_entropy_file ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void FUNC4(void)
{
	char *buf;
	size_t len;

	if (!random_entropy_file)
		return;

	buf = FUNC1(random_entropy_file, &len);
	if (buf == NULL)
		return; /* entropy file not yet available */

	if (len != 1 + RANDOM_ENTROPY_SIZE) {
		FUNC3(MSG_DEBUG, "random: Invalid entropy file %s",
			   random_entropy_file);
		FUNC0(buf);
		return;
	}

	own_pool_ready = (u8) buf[0];
	FUNC2(buf + 1, RANDOM_ENTROPY_SIZE);
	FUNC0(buf);
	FUNC3(MSG_DEBUG, "random: Added entropy from %s "
		   "(own_pool_ready=%u)",
		   random_entropy_file, own_pool_ready);
}