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

/* Variables and functions */
 int /*<<< orphan*/  DL_INFO_ACK_SIZE ; 
 int FUNC0 (int,int /*<<< orphan*/ ,char*,char*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC1(int fd, char *bufp, char *ebuf)
{

	return (FUNC0(fd, DL_INFO_ACK_SIZE, "info", bufp, ebuf, NULL));
}