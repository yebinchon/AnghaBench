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
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  TERMTYPE ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ ERR ; 
 int MAX_ENTRY_SIZE ; 
 int /*<<< orphan*/  W_OK ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 unsigned int FUNC6 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,unsigned int*,unsigned int) ; 

__attribute__((used)) static void
FUNC9(char *filename, TERMTYPE *tp)
{
    char buffer[MAX_ENTRY_SIZE];
    unsigned limit = sizeof(buffer);
    unsigned offset = 0;

    FILE *fp = (FUNC1(filename, W_OK) == 0) ? FUNC5(filename, "wb") : 0;
    if (fp == 0) {
	FUNC7(filename);
	FUNC2("can't open %s/%s", FUNC3(0), filename);
    }
    FUNC0(1, ("Created %s", filename));

    if (FUNC8(tp, buffer, &offset, limit) == ERR
	|| FUNC6(buffer, sizeof(char), (size_t) offset, fp) != offset) {
	FUNC2("error writing %s/%s", FUNC3(0), filename);
    }

    FUNC4(fp);
}