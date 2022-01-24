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
struct TYPE_5__ {int /*<<< orphan*/  r_addr; int /*<<< orphan*/  r_port; int /*<<< orphan*/  l_addr; int /*<<< orphan*/  l_port; int /*<<< orphan*/  type; } ;
struct TYPE_6__ {TYPE_1__ socket; } ;
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
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC8(FILE *fp, tokenstr_t *tok, char *del, int oflags)
{

	FUNC7(fp, tok->id, "socket", oflags);
	if (oflags & AU_OFLAG_XML) {
		FUNC3(fp, "sock_type");
		FUNC4(fp, tok->tt.socket.type, "%u");
		FUNC0(fp);
		FUNC3(fp, "lport");
		FUNC4(fp, FUNC2(tok->tt.socket.l_port), "%u");
		FUNC0(fp);
		FUNC3(fp, "laddr");
		FUNC6(fp, tok->tt.socket.l_addr);
		FUNC0(fp);
		FUNC3(fp, "fport");
		FUNC4(fp, FUNC2(tok->tt.socket.r_port), "%u");
		FUNC0(fp);
		FUNC3(fp, "faddr");
		FUNC6(fp, tok->tt.socket.r_addr);
		FUNC0(fp);
		FUNC1(fp, tok->id);
	} else {
		FUNC5(fp, del);
		FUNC4(fp, tok->tt.socket.type, "%u");
		FUNC5(fp, del);
		FUNC4(fp, FUNC2(tok->tt.socket.l_port), "%u");
		FUNC5(fp, del);
		FUNC6(fp, tok->tt.socket.l_addr);
		FUNC5(fp, del);
		FUNC4(fp, FUNC2(tok->tt.socket.r_port), "%u");
		FUNC5(fp, del);
		FUNC6(fp, tok->tt.socket.r_addr);
	}
}