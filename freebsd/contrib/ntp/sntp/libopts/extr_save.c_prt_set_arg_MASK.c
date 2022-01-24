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
typedef  int /*<<< orphan*/  tOptDesc ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 size_t FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(FILE * fp, tOptDesc * od)
{
    char * list = FUNC3(od);
    size_t len  = FUNC5(list);
    char * buf  = (char *)FUNC0(len + 3, "dir name");
    *buf= '=';
    FUNC2(buf+1, list, len + 1);
    FUNC4(fp, od, buf);
    FUNC1(buf);
    FUNC1(list);
}