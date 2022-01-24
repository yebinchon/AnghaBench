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
struct KeyFuncs {int /*<<< orphan*/  func; scalar_t__ name; } ;
typedef  int /*<<< orphan*/  KEYCMD ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 
 struct KeyFuncs* FuncNames ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static  KEYCMD
FUNC4(Char *str)
{
    struct KeyFuncs *fp;

    for (fp = FuncNames; fp->name; fp++) {
	if (FUNC2(FUNC1(str), fp->name) == 0) {
	    return (KEYCMD) fp->func;
	}
    }
    FUNC3(FUNC0(20, 3, "Bad command name: %S\n"), str);
    return 0;
}