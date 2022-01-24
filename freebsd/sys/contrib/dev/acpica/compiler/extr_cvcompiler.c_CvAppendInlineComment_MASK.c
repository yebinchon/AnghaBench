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
typedef  int UINT32 ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 

char *
FUNC4 (
    char                    *InlineComment,
    char                    *ToAdd)
{
    char*                   Str;
    UINT32                  Size = 0;


    if (!InlineComment)
    {
        return (ToAdd);
    }

    if (!ToAdd)
    {
        return (InlineComment);
    }

    Size = FUNC3 (ToAdd);
    Size += FUNC3 (InlineComment);
    Str = FUNC0 (Size + 1);

    FUNC2 (Str, InlineComment);
    FUNC1 (Str, ToAdd);
    Str[Size +1] = 0;
    return (Str);
}