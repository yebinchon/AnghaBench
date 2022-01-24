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
struct TYPE_5__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  nid; int /*<<< orphan*/  fsid; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  mode; } ;
struct TYPE_6__ {TYPE_1__ attr32; } ;
struct TYPE_7__ {TYPE_2__ tt; int /*<<< orphan*/  id; } ;
typedef  TYPE_3__ tokenstr_t ;
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
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC9(FILE *fp, tokenstr_t *tok, char *del, int oflags)
{

	FUNC7(fp, tok->id, "attribute", oflags);
	if (oflags & AU_OFLAG_XML) {
		FUNC2(fp, "mode");
		FUNC3(fp, tok->tt.attr32.mode, "%o");
		FUNC0(fp);
		FUNC2(fp, "uid");
		FUNC8(fp, tok->tt.attr32.uid, oflags);
		FUNC0(fp);
		FUNC2(fp, "gid");
		FUNC6(fp, tok->tt.attr32.gid, oflags);
		FUNC0(fp);
		FUNC2(fp, "fsid");
		FUNC3(fp, tok->tt.attr32.fsid, "%u");
		FUNC0(fp);
		FUNC2(fp, "nodeid");
		FUNC4(fp, tok->tt.attr32.nid, "%lld");
		FUNC0(fp);
		FUNC2(fp, "device");
		FUNC3(fp, tok->tt.attr32.dev, "%u");
		FUNC0(fp);
		FUNC1(fp, tok->id);
	} else {
		FUNC5(fp, del);
		FUNC3(fp, tok->tt.attr32.mode, "%o");
		FUNC5(fp, del);
		FUNC8(fp, tok->tt.attr32.uid, oflags);
		FUNC5(fp, del);
		FUNC6(fp, tok->tt.attr32.gid, oflags);
		FUNC5(fp, del);
		FUNC3(fp, tok->tt.attr32.fsid, "%u");
		FUNC5(fp, del);
		FUNC4(fp, tok->tt.attr32.nid, "%lld");
		FUNC5(fp, del);
		FUNC3(fp, tok->tt.attr32.dev, "%u");
	}
}