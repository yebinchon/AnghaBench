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
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_5__ {int /*<<< orphan*/  length; scalar_t__ data; } ;
struct TYPE_6__ {TYPE_1__ invalid; } ;
struct TYPE_7__ {TYPE_2__ tt; int /*<<< orphan*/  id; } ;
typedef  TYPE_3__ tokenstr_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int AU_OFLAG_XML ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC3(FILE *fp, tokenstr_t *tok, char *del, int oflags)
{

	if (!(oflags & AU_OFLAG_XML)) {
		FUNC2(fp, tok->id, "unknown", oflags);
		FUNC0(fp, del);
		FUNC1(fp, (u_char*)tok->tt.invalid.data,
		    tok->tt.invalid.length);
	}
}