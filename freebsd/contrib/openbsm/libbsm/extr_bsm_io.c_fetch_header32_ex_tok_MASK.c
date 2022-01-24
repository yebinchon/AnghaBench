#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_5__ {int size; int ad_type; int s; int ms; int /*<<< orphan*/ * addr; int /*<<< orphan*/  e_mod; int /*<<< orphan*/  e_type; int /*<<< orphan*/  version; } ;
struct TYPE_6__ {TYPE_1__ hdr32_ex; } ;
struct TYPE_7__ {int /*<<< orphan*/  len; TYPE_2__ tt; } ;
typedef  TYPE_3__ tokenstr_t ;

/* Variables and functions */
#define  AU_IPv4 129 
#define  AU_IPv6 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC5(tokenstr_t *tok, u_char *buf, int len)
{
	int err = 0;

	FUNC3(buf, len, tok->tt.hdr32_ex.size, tok->len, err);
	if (err)
		return (-1);

	FUNC1(buf, len, tok->tt.hdr32_ex.version, tok->len, err);
	if (err)
		return (-1);

	FUNC2(buf, len, tok->tt.hdr32_ex.e_type, tok->len, err);
	if (err)
		return (-1);

	FUNC2(buf, len, tok->tt.hdr32_ex.e_mod, tok->len, err);
	if (err)
		return (-1);

	FUNC3(buf, len, tok->tt.hdr32_ex.ad_type, tok->len, err);
	if (err)
		return (-1);

	FUNC4(tok->tt.hdr32_ex.addr, sizeof(tok->tt.hdr32_ex.addr));
	switch (tok->tt.hdr32_ex.ad_type) {
	case AU_IPv4:
		FUNC0(buf, len, &tok->tt.hdr32_ex.addr[0],
		    sizeof(tok->tt.hdr32_ex.addr[0]), tok->len, err);
		if (err)
			return (-1);
		break;

	case AU_IPv6:
		FUNC0(buf, len, tok->tt.hdr32_ex.addr,
		    sizeof(tok->tt.hdr32_ex.addr), tok->len, err);
		break;
	}

	FUNC3(buf, len, tok->tt.hdr32_ex.s, tok->len, err);
	if (err)
		return (-1);

	FUNC3(buf, len, tok->tt.hdr32_ex.ms, tok->len, err);
	if (err)
		return (-1);

	return (0);
}