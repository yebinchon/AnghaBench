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
typedef  int /*<<< orphan*/  _U_UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

void FUNC2(const char* string)
{
    const char* pch = string;

    if (pch != NULL)
    {
        while (*pch)
        {
            // printable characters plus CR & LF are printed
            if ((*pch <= 126) && (*pch >= 32))
            {
                FUNC0(*pch);
            }
            //write escaped carriage returns
            else if (*pch == 13)
            {
                FUNC0('\\');
                FUNC0('r');
            }
            //write escaped line feeds
            else if (*pch == 10)
            {
                FUNC0('\\');
                FUNC0('n');
            }
            // unprintable characters are shown as codes
            else
            {
                FUNC0('\\');
                FUNC1((_U_UINT)*pch, 2);
            }
            pch++;
        }
    }
}