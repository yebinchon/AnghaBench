#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  yn ;
struct TYPE_3__ {int fi_flx; int /*<<< orphan*/  fi_dst; int /*<<< orphan*/  fi_src; } ;
struct TYPE_4__ {int* fin_data; int fin_id; TYPE_1__ fin_fi; scalar_t__ fin_out; } ;
struct frauth {int fra_pass; int fra_index; TYPE_2__ fra_info; int /*<<< orphan*/ * fra_buf; scalar_t__ fra_len; } ;
typedef  TYPE_1__ fr_ip_t ;
typedef  TYPE_2__ fr_info_t ;

/* Variables and functions */
 int FI_TCPUDP ; 
 int FR_BLOCK ; 
 int FR_INQUE ; 
 int FR_KEEPSTATE ; 
 int FR_NOMATCH ; 
 int FR_OUTQUE ; 
 int FR_PASS ; 
 int /*<<< orphan*/  IPL_NAME ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  SIOCAUTHR ; 
 int /*<<< orphan*/  SIOCAUTHW ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,struct frauth**) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 

FUNC8()
{
	struct frauth fra;
	struct frauth *frap = &fra;
	fr_info_t *fin = &fra.fra_info;
	fr_ip_t	*fi = &fin->fin_fi;
	char yn[16];
	int fd;

	fd = FUNC5(IPL_NAME, O_RDWR);
	fra.fra_len = 0;
	fra.fra_buf = NULL;
	while (FUNC4(fd, SIOCAUTHW, &frap) == 0) {
		if (fra.fra_info.fin_out)
			fra.fra_pass = FR_OUTQUE;
		else
			fra.fra_pass = FR_INQUE;

		FUNC7("%s ", FUNC3(fi->fi_src));
		if (fi->fi_flx & FI_TCPUDP)
			FUNC7("port %d ", fin->fin_data[0]);
		FUNC7("-> %s ", FUNC3(fi->fi_dst));
		if (fi->fi_flx & FI_TCPUDP)
			FUNC7("port %d ", fin->fin_data[1]);
		FUNC7("\n");
		FUNC7("Allow packet through ? [y/n]");
		FUNC0(stdout);
		if (!FUNC1(yn, sizeof(yn), stdin))
			break;
		FUNC0(stdin);
		if (yn[0] == 'n' || yn[0] == 'N')
			fra.fra_pass |= FR_BLOCK;
		else if (yn[0] == 'y' || yn[0] == 'Y') {
			fra.fra_pass |= FR_PASS;
			if (fra.fra_info.fin_fi.fi_flx & FI_TCPUDP)
				fra.fra_pass |= FR_KEEPSTATE;
		} else
			fra.fra_pass |= FR_NOMATCH;
		FUNC7("answer = %c (%x), id %d idx %d\n", yn[0],
			fra.fra_pass, fra.fra_info.fin_id, fra.fra_index);
		if (FUNC4(fd, SIOCAUTHR, &frap) != 0)
			FUNC6("SIOCAUTHR");
	}
	FUNC2(stderr, "errno=%d \n", errno);
	FUNC6("frauth-SIOCAUTHW");
}