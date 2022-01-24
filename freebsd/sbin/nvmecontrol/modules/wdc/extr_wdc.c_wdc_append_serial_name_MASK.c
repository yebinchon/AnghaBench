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
struct nvme_controller_data {int /*<<< orphan*/  sn; } ;

/* Variables and functions */
 int NVME_SERIAL_NUMBER_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct nvme_controller_data*) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char*,char*,char const*) ; 
 scalar_t__ FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(int fd, char *buf, size_t len, const char *suffix)
{
	struct nvme_controller_data	cdata;
	char sn[NVME_SERIAL_NUMBER_LENGTH + 1];
	char *walker;

	len -= FUNC3(buf);
	buf += FUNC3(buf);
	FUNC1(fd, &cdata);
	FUNC0(sn, cdata.sn, NVME_SERIAL_NUMBER_LENGTH);
	walker = sn + NVME_SERIAL_NUMBER_LENGTH - 1;
	while (walker > sn && *walker == ' ')
		walker--;
	*++walker = '\0';
	FUNC2(buf, len, "%s%s.bin", sn, suffix);
}