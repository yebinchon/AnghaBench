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
struct TYPE_5__ {int /*<<< orphan*/  ret; int /*<<< orphan*/  status; } ;
struct TYPE_6__ {TYPE_1__ ret32; } ;
struct TYPE_7__ {TYPE_2__ tt; int /*<<< orphan*/  id; } ;
typedef  TYPE_3__ tokenstr_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int AU_OFLAG_XML ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC7(FILE *fp, tokenstr_t *tok, char *del, int oflags)
{

	FUNC6(fp, tok->id, "return", oflags);
	if (oflags & AU_OFLAG_XML) {
		FUNC2(fp ,"errval");
		FUNC5(fp, tok->tt.ret32.status, oflags);
		FUNC0(fp);
		FUNC2(fp, "retval");
		FUNC3(fp, tok->tt.ret32.ret, "%u");
		FUNC0(fp);
		FUNC1(fp, tok->id);
	} else {
		FUNC4(fp, del);
		FUNC5(fp, tok->tt.ret32.status, oflags);
		FUNC4(fp, del);
		FUNC3(fp, tok->tt.ret32.ret, "%u");
	}
}