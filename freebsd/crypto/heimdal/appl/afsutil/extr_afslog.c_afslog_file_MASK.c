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
typedef  int /*<<< orphan*/  cell ;

/* Variables and functions */
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,char*,int) ; 
 scalar_t__ verbose ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,...) ; 

__attribute__((used)) static int
FUNC3(const char *path)
{
    char cell[64];
    if(FUNC1(path, cell, sizeof(cell))){
	FUNC2("No cell found for file \"%s\".", path);
	return -1;
    }
    if(verbose)
	FUNC2("File \"%s\" lives in cell \"%s\"", path, cell);
    return FUNC0(cell, 0);
}