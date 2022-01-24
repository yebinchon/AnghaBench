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
struct TYPE_5__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; int /*<<< orphan*/  ms; int /*<<< orphan*/  s; } ;
struct TYPE_6__ {TYPE_1__ file; } ;
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
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC9(FILE *fp, tokenstr_t *tok, char *del, int oflags)
{

	FUNC8(fp, tok->id, "file", oflags);
	if (oflags & AU_OFLAG_XML) {
		FUNC3(fp, "time");
		FUNC6(fp, tok->tt.file.s, oflags);
		FUNC0(fp);
		FUNC3(fp, "msec");
		FUNC5(fp, tok->tt.file.ms, oflags);
		FUNC0(fp);
		FUNC2(fp, ">");
		FUNC7(fp, tok->tt.file.name, tok->tt.file.len);
		FUNC1(fp, tok->id);
	} else {
		FUNC4(fp, del);
		FUNC6(fp, tok->tt.file.s, oflags);
		FUNC4(fp, del);
		FUNC5(fp, tok->tt.file.ms, oflags);
		FUNC4(fp, del);
		FUNC7(fp, tok->tt.file.name, tok->tt.file.len);
	}
}