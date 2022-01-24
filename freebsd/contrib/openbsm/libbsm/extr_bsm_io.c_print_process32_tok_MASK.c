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
struct TYPE_6__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  port; } ;
struct TYPE_7__ {TYPE_1__ tid; int /*<<< orphan*/  sid; int /*<<< orphan*/  pid; int /*<<< orphan*/  rgid; int /*<<< orphan*/  ruid; int /*<<< orphan*/  egid; int /*<<< orphan*/  euid; int /*<<< orphan*/  auid; } ;
struct TYPE_8__ {TYPE_2__ proc32; } ;
struct TYPE_9__ {TYPE_3__ tt; int /*<<< orphan*/  id; } ;
typedef  TYPE_4__ tokenstr_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int AU_OFLAG_XML ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC9(FILE *fp, tokenstr_t *tok, char *del, int oflags)
{

	FUNC7(fp, tok->id, "process", oflags);
	if (oflags & AU_OFLAG_XML) {
		FUNC2(fp, "audit-uid");
		FUNC8(fp, tok->tt.proc32.auid, oflags);
		FUNC0(fp);
		FUNC2(fp, "uid");
		FUNC8(fp, tok->tt.proc32.euid, oflags);
		FUNC0(fp);
		FUNC2(fp, "gid");
		FUNC5(fp, tok->tt.proc32.egid, oflags);
		FUNC0(fp);
		FUNC2(fp, "ruid");
		FUNC8(fp, tok->tt.proc32.ruid, oflags);
		FUNC0(fp);
		FUNC2(fp, "rgid");
		FUNC5(fp, tok->tt.proc32.rgid, oflags);
		FUNC0(fp);
		FUNC2(fp, "pid");
		FUNC3(fp, tok->tt.proc32.pid, "%u");
		FUNC0(fp);
		FUNC2(fp, "sid");
		FUNC3(fp, tok->tt.proc32.sid, "%u");
		FUNC0(fp);
		FUNC2(fp, "tid");
		FUNC3(fp, tok->tt.proc32.tid.port, "%u");
		FUNC6(fp, tok->tt.proc32.tid.addr);
		FUNC0(fp);
		FUNC1(fp, tok->id);
	} else {
		FUNC4(fp, del);
		FUNC8(fp, tok->tt.proc32.auid, oflags);
		FUNC4(fp, del);
		FUNC8(fp, tok->tt.proc32.euid, oflags);
		FUNC4(fp, del);
		FUNC5(fp, tok->tt.proc32.egid, oflags);
		FUNC4(fp, del);
		FUNC8(fp, tok->tt.proc32.ruid, oflags);
		FUNC4(fp, del);
		FUNC5(fp, tok->tt.proc32.rgid, oflags);
		FUNC4(fp, del);
		FUNC3(fp, tok->tt.proc32.pid, "%u");
		FUNC4(fp, del);
		FUNC3(fp, tok->tt.proc32.sid, "%u");
		FUNC4(fp, del);
		FUNC3(fp, tok->tt.proc32.tid.port, "%u");
		FUNC4(fp, del);
		FUNC6(fp, tok->tt.proc32.tid.addr);
	}
}