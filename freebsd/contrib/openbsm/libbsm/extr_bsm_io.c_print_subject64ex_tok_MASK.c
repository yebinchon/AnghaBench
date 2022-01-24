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
struct TYPE_6__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  type; int /*<<< orphan*/  port; } ;
struct TYPE_7__ {TYPE_1__ tid; int /*<<< orphan*/  sid; int /*<<< orphan*/  pid; int /*<<< orphan*/  rgid; int /*<<< orphan*/  ruid; int /*<<< orphan*/  egid; int /*<<< orphan*/  euid; int /*<<< orphan*/  auid; } ;
struct TYPE_8__ {TYPE_2__ subj64_ex; } ;
struct TYPE_9__ {TYPE_3__ tt; int /*<<< orphan*/  id; } ;
typedef  TYPE_4__ tokenstr_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int AU_OFLAG_XML ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC10(FILE *fp, tokenstr_t *tok, char *del, int oflags)
{
	FUNC8(fp, tok->id, "subject_ex", oflags);
	if (oflags & AU_OFLAG_XML) {
		FUNC2(fp, "audit-uid");
		FUNC9(fp, tok->tt.subj64_ex.auid, oflags);
		FUNC0(fp);
		FUNC2(fp, "uid");
		FUNC9(fp, tok->tt.subj64_ex.euid, oflags);
		FUNC0(fp);
		FUNC2(fp, "gid");
		FUNC6(fp, tok->tt.subj64_ex.egid, oflags);
		FUNC0(fp);
		FUNC2(fp, "ruid");
		FUNC9(fp, tok->tt.subj64_ex.ruid, oflags);
		FUNC0(fp);
		FUNC2(fp, "rgid");
		FUNC6(fp, tok->tt.subj64_ex.rgid, oflags);
		FUNC0(fp);
		FUNC2(fp, "pid");
		FUNC3(fp, tok->tt.subj64_ex.pid, "%u");
		FUNC0(fp);
		FUNC2(fp, "sid");
		FUNC3(fp, tok->tt.subj64_ex.sid, "%u");
		FUNC0(fp);
		FUNC2(fp, "tid");
		FUNC4(fp, tok->tt.subj64_ex.tid.port, "%llu");
		FUNC7(fp, tok->tt.subj64_ex.tid.type,
		    tok->tt.subj64_ex.tid.addr);
		FUNC0(fp);
		FUNC1(fp, tok->id);
	} else {
		FUNC5(fp, del);
		FUNC9(fp, tok->tt.subj64_ex.auid, oflags);
		FUNC5(fp, del);
		FUNC9(fp, tok->tt.subj64_ex.euid, oflags);
		FUNC5(fp, del);
		FUNC6(fp, tok->tt.subj64_ex.egid, oflags);
		FUNC5(fp, del);
		FUNC9(fp, tok->tt.subj64_ex.ruid, oflags);
		FUNC5(fp, del);
		FUNC6(fp, tok->tt.subj64_ex.rgid, oflags);
		FUNC5(fp, del);
		FUNC3(fp, tok->tt.subj64_ex.pid, "%u");
		FUNC5(fp, del);
		FUNC3(fp, tok->tt.subj64_ex.sid, "%u");
		FUNC5(fp, del);
		FUNC4(fp, tok->tt.subj64_ex.tid.port, "%llu");
		FUNC5(fp, del);
		FUNC7(fp, tok->tt.subj64_ex.tid.type,
		    tok->tt.subj64_ex.tid.addr);
	}
}