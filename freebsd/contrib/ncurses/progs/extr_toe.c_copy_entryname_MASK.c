#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  d_name; } ;
typedef  TYPE_1__ DIRENT ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static char *
FUNC4(DIRENT * src)
{
    size_t len = FUNC0(src);
    char *result = FUNC2(len + 1);
    if (result == 0)
	FUNC1("copy entryname");
    FUNC3(result, src->d_name, len);
    result[len] = '\0';

    return result;
}