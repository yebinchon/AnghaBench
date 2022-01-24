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
struct TYPE_5__ {int /*<<< orphan*/  len; int /*<<< orphan*/  text; } ;
struct TYPE_6__ {TYPE_1__ text; } ;
struct TYPE_7__ {TYPE_2__ tt; int /*<<< orphan*/  id; } ;
typedef  TYPE_3__ tokenstr_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int AU_OFLAG_XML ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC4(FILE *fp, tokenstr_t *tok, char *del, int oflags)
{

	FUNC3(fp, tok->id, "text", oflags);
	if (oflags & AU_OFLAG_XML) {
		FUNC2(fp, tok->tt.text.text, tok->tt.text.len);
		FUNC0(fp, tok->id);
	} else {
		FUNC1(fp, del);
		FUNC2(fp, tok->tt.text.text, tok->tt.text.len);
	}
}