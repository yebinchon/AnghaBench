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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int NID_undef ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  bio_err ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static int FUNC3(int *ppbe, const char *str)
{
    if (!str)
        return 0;
    if (FUNC2(str, "NONE") == 0) {
        *ppbe = -1;
        return 1;
    }
    *ppbe = FUNC1(str);
    if (*ppbe == NID_undef) {
        FUNC0(bio_err, "Unknown PBE algorithm %s\n", str);
        return 0;
    }
    return 1;
}