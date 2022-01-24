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
struct TYPE_5__ {int /*<<< orphan*/  len; int /*<<< orphan*/  text; int /*<<< orphan*/  val; int /*<<< orphan*/  no; } ;
struct TYPE_6__ {TYPE_1__ arg32; } ;
struct TYPE_7__ {int /*<<< orphan*/  len; TYPE_2__ tt; } ;
typedef  TYPE_3__ tokenstr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(tokenstr_t *tok, u_char *buf, int len)
{
	int err = 0;

	FUNC0(buf, len, tok->tt.arg32.no, tok->len, err);
	if (err)
		return (-1);

	FUNC2(buf, len, tok->tt.arg32.val, tok->len, err);
	if (err)
		return (-1);

	FUNC1(buf, len, tok->tt.arg32.len, tok->len, err);
	if (err)
		return (-1);

	FUNC3((char*)buf, len, tok->tt.arg32.text, tok->tt.arg32.len,
	    tok->len, err);
	if (err)
		return (-1);

	return (0);
}