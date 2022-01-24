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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 size_t FUNC3 (char*,int,int,int /*<<< orphan*/ *) ; 
 size_t FUNC4 (char*,int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC5(char *file)
{
    FILE *fp;
    size_t nr;
    char buf[BUFSIZ];

    if ((fp = FUNC2(file, "r")) == 0)
	FUNC0(file);

    while ((nr = FUNC3(buf, sizeof(char), sizeof(buf), fp)) != 0)
	if (FUNC4(buf, sizeof(char), nr, stderr) != nr)
	      FUNC0("write to stderr");
    FUNC1(fp);
}