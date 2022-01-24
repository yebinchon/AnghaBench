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
struct TYPE_5__ {int /*<<< orphan*/  r_addr; int /*<<< orphan*/  atype; int /*<<< orphan*/  r_port; int /*<<< orphan*/  l_addr; int /*<<< orphan*/  l_port; int /*<<< orphan*/  type; int /*<<< orphan*/  domain; } ;
struct TYPE_6__ {TYPE_1__ socket_ex32; } ;
struct TYPE_7__ {TYPE_2__ tt; int /*<<< orphan*/  id; } ;
typedef  TYPE_3__ tokenstr_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int AU_OFLAG_XML ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC9(FILE *fp, tokenstr_t *tok, char *del, int oflags)
{

	/*
	 * This print routine prints BSM constant space domains and socket
	 * types rather than converting them.  If we add string printers for
	 * these constants in the future, we may want to call conversion
	 * routines.
	 */
	FUNC8(fp, tok->id, "socket", oflags);
	if (oflags & AU_OFLAG_XML) {
		FUNC3(fp, "sock_dom");
		FUNC4(fp, tok->tt.socket_ex32.domain, "%#x");
		FUNC0(fp);
		FUNC3(fp, "sock_type");
		FUNC4(fp, tok->tt.socket_ex32.type, "%#x");
		FUNC0(fp);
		FUNC3(fp, "lport");
		FUNC4(fp, FUNC2(tok->tt.socket_ex32.l_port), "%#x");
		FUNC0(fp);
		FUNC3(fp, "laddr");
		FUNC7(fp, tok->tt.socket_ex32.atype,
		    tok->tt.socket_ex32.l_addr);
		FUNC0(fp);
		FUNC3(fp, "faddr");
		FUNC7(fp, tok->tt.socket_ex32.atype,
		    tok->tt.socket_ex32.r_addr);
		FUNC0(fp);
		FUNC3(fp, "fport");
		FUNC4(fp, FUNC2(tok->tt.socket_ex32.r_port), "%#x");
		FUNC0(fp);
		FUNC1(fp, tok->id);
	} else {
		FUNC6(fp, del);
		FUNC4(fp, tok->tt.socket_ex32.domain, "%#x");
		FUNC6(fp, del);
		FUNC4(fp, tok->tt.socket_ex32.type, "%#x");
		FUNC6(fp, del);
		FUNC4(fp, FUNC2(tok->tt.socket_ex32.l_port), "%#x");
		FUNC6(fp, del);
		FUNC7(fp, tok->tt.socket_ex32.atype,
		    tok->tt.socket_ex32.l_addr);
		FUNC6(fp, del);
		FUNC5(fp, FUNC2(tok->tt.socket_ex32.r_port), "%#x");
		FUNC6(fp, del);
		FUNC7(fp, tok->tt.socket_ex32.atype,
		    tok->tt.socket_ex32.r_addr);
	}
}