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
typedef  size_t u_int32_t ;
struct TYPE_5__ {size_t count; int /*<<< orphan*/ * text; } ;
struct TYPE_6__ {TYPE_1__ execarg; } ;
struct TYPE_7__ {int /*<<< orphan*/  id; TYPE_2__ tt; } ;
typedef  TYPE_3__ tokenstr_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int AU_OFLAG_XML ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(FILE *fp, tokenstr_t *tok, char *del, int oflags)
{
	u_int32_t i;

	FUNC4(fp, tok->id, "exec arg", oflags);
	for (i = 0; i < tok->tt.execarg.count; i++) {
		if (oflags & AU_OFLAG_XML) {
			FUNC1(fp, "<arg>");
			FUNC5(fp, tok->tt.execarg.text[i],
			    FUNC6(tok->tt.execarg.text[i]));
			FUNC1(fp, "</arg>");
		} else {
			FUNC2(fp, del);
			FUNC3(fp, tok->tt.execarg.text[i],
			    FUNC6(tok->tt.execarg.text[i]));
		}
	}
	if (oflags & AU_OFLAG_XML)
		FUNC0(fp, tok->id);
}