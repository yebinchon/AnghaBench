#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  SCR ;
typedef  int /*<<< orphan*/  EXCMD ;
typedef  int /*<<< orphan*/  CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  C_SOURCE ; 
 int /*<<< orphan*/  OOBLNO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(SCR *sp, char *name)
{
	EXCMD cmd;
	CHAR_T *wp;
	size_t wlen;

	FUNC2(sp, &cmd, C_SOURCE, 0, OOBLNO, OOBLNO, 0);
	FUNC0(sp, name, FUNC4(name)+1, wp, wlen);
	FUNC1(sp, &cmd, wp, wlen - 1);
	return (FUNC3(sp, &cmd));
}