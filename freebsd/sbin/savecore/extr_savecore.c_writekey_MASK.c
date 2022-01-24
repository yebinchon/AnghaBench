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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC2 (int,char const*,int,int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static bool
FUNC4(int savedirfd, const char *keyname, uint8_t *dumpkey,
    uint32_t dumpkeysize)
{
	int fd;

	fd = FUNC2(savedirfd, keyname, O_WRONLY | O_CREAT | O_TRUNC, 0600);
	if (fd == -1) {
		FUNC1(LOG_ERR, "Unable to open %s to write the key: %m.",
		    keyname);
		return (false);
	}

	if (FUNC3(fd, dumpkey, dumpkeysize) != (ssize_t)dumpkeysize) {
		FUNC1(LOG_ERR, "Unable to write the key to %s: %m.", keyname);
		FUNC0(fd);
		return (false);
	}

	FUNC0(fd);
	return (true);
}