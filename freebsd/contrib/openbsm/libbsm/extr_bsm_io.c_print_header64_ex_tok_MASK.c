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
struct TYPE_5__ {int /*<<< orphan*/  ms; int /*<<< orphan*/  s; int /*<<< orphan*/  addr; int /*<<< orphan*/  ad_type; int /*<<< orphan*/  e_mod; int /*<<< orphan*/  e_type; int /*<<< orphan*/  version; int /*<<< orphan*/  size; } ;
struct TYPE_6__ {TYPE_1__ hdr64_ex; } ;
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
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC12(FILE *fp, tokenstr_t *tok, char *del, int oflags)
{

	FUNC11(fp, tok->id, "header_ex", oflags);
	if (oflags & AU_OFLAG_XML) {
		FUNC2(fp, "version");
		FUNC3(fp, tok->tt.hdr64_ex.version, "%u");
		FUNC0(fp);
		FUNC2(fp, "event");
		FUNC6(fp, tok->tt.hdr64_ex.e_type, oflags);
		FUNC0(fp);
		FUNC2(fp, "modifier");
		FUNC7(fp, tok->tt.hdr64_ex.e_mod, oflags);
		FUNC0(fp);
		FUNC2(fp, "host");
		FUNC8(fp, tok->tt.hdr64_ex.ad_type,
		    tok->tt.hdr64_ex.addr);
		FUNC0(fp);
		FUNC2(fp, "time");
		FUNC10(fp, tok->tt.hdr64_ex.s, oflags);
		FUNC0(fp);
		FUNC2(fp, "msec");
		FUNC9(fp, tok->tt.hdr64_ex.ms, oflags);
		FUNC0(fp);
		FUNC1(fp, tok->id);
	} else {
		FUNC5(fp, del);
		FUNC4(fp, tok->tt.hdr64_ex.size, "%u");
		FUNC5(fp, del);
		FUNC3(fp, tok->tt.hdr64_ex.version, "%u");
		FUNC5(fp, del);
		FUNC6(fp, tok->tt.hdr64_ex.e_type, oflags);
		FUNC5(fp, del);
		FUNC7(fp, tok->tt.hdr64_ex.e_mod, oflags);
		FUNC5(fp, del);
		FUNC8(fp, tok->tt.hdr64_ex.ad_type,
		    tok->tt.hdr64_ex.addr);
		FUNC5(fp, del);
		FUNC10(fp, tok->tt.hdr64_ex.s, oflags);
		FUNC5(fp, del);
		FUNC9(fp, tok->tt.hdr64_ex.ms, oflags);
	}
}