#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_6__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  port; } ;
struct TYPE_7__ {TYPE_1__ tid; int /*<<< orphan*/  sid; int /*<<< orphan*/  pid; int /*<<< orphan*/  rgid; int /*<<< orphan*/  ruid; int /*<<< orphan*/  egid; int /*<<< orphan*/  euid; int /*<<< orphan*/  auid; } ;
struct TYPE_8__ {TYPE_2__ proc32; } ;
struct TYPE_9__ {int /*<<< orphan*/  len; TYPE_3__ tt; } ;
typedef  TYPE_4__ tokenstr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(tokenstr_t *tok, u_char *buf, int len)
{
	int err = 0;

	FUNC1(buf, len, tok->tt.proc32.auid, tok->len, err);
	if (err)
		return (-1);

	FUNC1(buf, len, tok->tt.proc32.euid, tok->len, err);
	if (err)
		return (-1);

	FUNC1(buf, len, tok->tt.proc32.egid, tok->len, err);
	if (err)
		return (-1);

	FUNC1(buf, len, tok->tt.proc32.ruid, tok->len, err);
	if (err)
		return (-1);

	FUNC1(buf, len, tok->tt.proc32.rgid, tok->len, err);
	if (err)
		return (-1);

	FUNC1(buf, len, tok->tt.proc32.pid, tok->len, err);
	if (err)
		return (-1);

	FUNC1(buf, len, tok->tt.proc32.sid, tok->len, err);
	if (err)
		return (-1);

	FUNC1(buf, len, tok->tt.proc32.tid.port, tok->len, err);
	if (err)
		return (-1);

	FUNC0(buf, len, &tok->tt.proc32.tid.addr,
	    sizeof(tok->tt.proc32.tid.addr), tok->len, err);
	if (err)
		return (-1);

	return (0);
}