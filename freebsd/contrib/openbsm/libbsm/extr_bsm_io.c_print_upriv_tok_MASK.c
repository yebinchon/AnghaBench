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
struct TYPE_5__ {int /*<<< orphan*/  privstrlen; int /*<<< orphan*/  priv; scalar_t__ sorf; } ;
struct TYPE_6__ {TYPE_1__ priv; } ;
struct TYPE_7__ {TYPE_2__ tt; int /*<<< orphan*/  id; } ;
typedef  TYPE_3__ tokenstr_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int AU_OFLAG_XML ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC7(FILE *fp, tokenstr_t *tok, char *del, int oflags)
{

	FUNC6(fp, tok->id, "use of privilege", oflags);
	if (oflags & AU_OFLAG_XML) {
		FUNC3(fp, "status");
		if (tok->tt.priv.sorf)
			(void) FUNC2(fp, "successful use of priv");
		else
			(void) FUNC2(fp, "failed use of priv");
		FUNC0(fp);
		FUNC3(fp, "name");
		FUNC5(fp, tok->tt.priv.priv, tok->tt.priv.privstrlen);
		FUNC0(fp);
		FUNC1(fp, tok->id);
	} else {
		FUNC4(fp, del);
		if (tok->tt.priv.sorf)
			(void) FUNC2(fp, "successful use of priv");
		else
			(void) FUNC2(fp, "failed use of priv");
		FUNC4(fp, del);
		FUNC5(fp, tok->tt.priv.priv, tok->tt.priv.privstrlen);
	}
}