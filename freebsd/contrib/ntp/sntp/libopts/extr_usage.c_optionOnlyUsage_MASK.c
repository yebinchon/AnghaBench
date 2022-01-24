#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  pzProgName; } ;
typedef  TYPE_1__ tOptions ;

/* Variables and functions */
 int EXIT_SUCCESS ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ option_usage_fp ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char const**) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 scalar_t__ stderr ; 
 int /*<<< orphan*/  zstderr_name ; 
 int /*<<< orphan*/  zstdout_name ; 
 int /*<<< orphan*/  zwriting ; 

void
FUNC9(tOptions * pOpts, int ex_code)
{
    char const * pOptTitle = NULL;

    FUNC7(pOpts, NULL);
    if ((ex_code != EXIT_SUCCESS) &&
        FUNC8(pOpts))
        return;

    /*
     *  Determine which header and which option formatting strings to use
     */
    if (FUNC0(pOpts))
        (void)FUNC5(pOpts, &pOptTitle);
    else
        (void)FUNC6(pOpts, &pOptTitle);

    FUNC4(pOpts, ex_code, pOptTitle);

    FUNC2(option_usage_fp);
    if (FUNC1(option_usage_fp) != 0)
        FUNC3(pOpts->pzProgName, zwriting, (option_usage_fp == stderr)
                   ? zstderr_name : zstdout_name);
}