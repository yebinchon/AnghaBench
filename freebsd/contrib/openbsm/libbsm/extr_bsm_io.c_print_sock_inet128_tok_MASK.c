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
struct TYPE_5__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  port; int /*<<< orphan*/  family; } ;
struct TYPE_6__ {TYPE_1__ sockinet_ex32; } ;
struct TYPE_7__ {TYPE_2__ tt; int /*<<< orphan*/  id; } ;
typedef  TYPE_3__ tokenstr_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  AU_IPv6 ; 
 int AU_OFLAG_XML ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC8(FILE *fp, tokenstr_t *tok, char *del, int oflags)
{

	FUNC7(fp, tok->id, "socket-inet6", oflags);
	if (oflags & AU_OFLAG_XML) {
		FUNC3(fp, "type");
		FUNC4(fp, tok->tt.sockinet_ex32.family, "%u");
		FUNC0(fp);
		FUNC3(fp, "port");
		FUNC4(fp, FUNC2(tok->tt.sockinet_ex32.port), "%u");
		FUNC0(fp);
		FUNC3(fp, "addr");
		FUNC6(fp, AU_IPv6, tok->tt.sockinet_ex32.addr);
		FUNC0(fp);
		FUNC1(fp, tok->id);
	} else {
		FUNC5(fp, del);
		FUNC4(fp, tok->tt.sockinet_ex32.family, "%u");
		FUNC5(fp, del);
		FUNC4(fp, FUNC2(tok->tt.sockinet_ex32.port), "%u");
		FUNC5(fp, del);
		FUNC6(fp, AU_IPv6, tok->tt.sockinet_ex32.addr);
	}
}