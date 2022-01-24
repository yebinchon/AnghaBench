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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,char*,char const*) ; 
 scalar_t__ PEM_BUFSIZE ; 
 int PEM_TYPE_ENCRYPTED ; 
 int PEM_TYPE_MIC_CLEAR ; 
 int PEM_TYPE_MIC_ONLY ; 
 int FUNC1 (char*) ; 

void FUNC2(char *buf, int type)
{
    const char *str;
    char *p = buf + FUNC1(buf);

    if (type == PEM_TYPE_ENCRYPTED)
        str = "ENCRYPTED";
    else if (type == PEM_TYPE_MIC_CLEAR)
        str = "MIC-CLEAR";
    else if (type == PEM_TYPE_MIC_ONLY)
        str = "MIC-ONLY";
    else
        str = "BAD-TYPE";

    FUNC0(p, PEM_BUFSIZE - (size_t)(p - buf), "Proc-Type: 4,%s\n", str);
}