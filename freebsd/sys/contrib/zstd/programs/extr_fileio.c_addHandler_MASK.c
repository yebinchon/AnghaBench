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
 int /*<<< orphan*/  INThandler ; 
 int /*<<< orphan*/  SIGINT ; 
 scalar_t__ FUNC0 (char const*) ; 
 char const* g_artefact ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(char const* dstFileName)
{
    if (FUNC0(dstFileName)) {
        g_artefact = dstFileName;
        FUNC1(SIGINT, INThandler);
    } else {
        g_artefact = NULL;
    }
}