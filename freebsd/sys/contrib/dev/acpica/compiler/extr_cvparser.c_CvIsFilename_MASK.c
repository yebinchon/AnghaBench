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
typedef  int UINT64 ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static BOOLEAN
FUNC3 (
    char                    *Filename)
{
    UINT64                  Length = FUNC2(Filename);
    char                    *FileExt = Filename + Length - 4;
    UINT64                  i;


    if ((Length > 4) && FUNC0 (FileExt, ".dsl"))
    {
        return (FALSE);
    }

    for(i = 0; i<Length; ++i)
    {
        if (!FUNC1 ((int) Filename[i]))
        {
            return (FALSE);
        }
    }

    return (TRUE);
}