#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct ifi2creq {int dev_addr; int offset; int len; int /*<<< orphan*/  data; } ;
struct i2c_info {scalar_t__ error; TYPE_1__* ifr; int /*<<< orphan*/  fd; } ;
typedef  int /*<<< orphan*/  req ;
typedef  scalar_t__ caddr_t ;
struct TYPE_2__ {scalar_t__ ifr_data; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  SIOCGI2C ; 
 int errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ifi2creq*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct i2c_info *ii, uint8_t addr, uint8_t off, uint8_t len,
    uint8_t *buf)
{
	struct ifi2creq req;
	int i, l;

	if (ii->error != 0)
		return (ii->error);

	ii->ifr->ifr_data = (caddr_t)&req;

	i = 0;
	l = 0;
	FUNC3(&req, 0, sizeof(req));
	req.dev_addr = addr;
	req.offset = off;
	req.len = len;

	while (len > 0) {
		l = FUNC0(sizeof(req.data), len);
		req.len = l;
		if (FUNC1(ii->fd, SIOCGI2C, ii->ifr) != 0) {
			ii->error = errno;
			return (errno);
		}

		FUNC2(&buf[i], req.data, l);
		len -= l;
		i += l;
		req.offset += l;
	}

	return (0);
}