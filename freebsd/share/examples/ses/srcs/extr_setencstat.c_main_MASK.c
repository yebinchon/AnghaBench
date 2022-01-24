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
typedef  scalar_t__ encioc_enc_status_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENCIOC_SETENCSTAT ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 long FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC6(int a, char **v)
{
	int fd;
	long val;
	encioc_enc_status_t stat;

	if (a != 3) {
		FUNC1(stderr, "usage: %s device enclosure_status\n", *v);
		return (1);
	}
	fd = FUNC3(v[1], O_RDWR);
	if (fd < 0) {
		FUNC4(v[1]);
		return (1);
	}
	
	val =  FUNC5(v[2], NULL, 0);
	stat = (encioc_enc_status_t)val;
	if (FUNC2(fd, ENCIOC_SETENCSTAT, (caddr_t) &stat) < 0) {
		FUNC4("ENCIOC_SETENCSTAT");
	}
	(void) FUNC0(fd);
	return (0);
}