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
struct TYPE_4__ {int /*<<< orphan*/ * dp; } ;
typedef  TYPE_1__ FICL_SYSTEM ;
typedef  int /*<<< orphan*/  FICL_DICT ;

/* Variables and functions */
 int /*<<< orphan*/  FICL_FALSE ; 
 int /*<<< orphan*/  FICL_TRUE ; 
 int /*<<< orphan*/  FW_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bye ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  displayPStack ; 
 int /*<<< orphan*/  displayRStack ; 
 int /*<<< orphan*/  env2Constant ; 
 int /*<<< orphan*/  envConstant ; 
 int /*<<< orphan*/  ficlDebugXT ; 
 int /*<<< orphan*/  ficlListParseSteps ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  forget ; 
 int /*<<< orphan*/  forgetWid ; 
 int /*<<< orphan*/  listEnv ; 
 int /*<<< orphan*/  listWords ; 
 int /*<<< orphan*/  see ; 
 int /*<<< orphan*/  seeXT ; 
 int /*<<< orphan*/  stepBreak ; 

void FUNC3(FICL_SYSTEM *pSys)
{
    FICL_DICT *dp = pSys->dp;
    FUNC0 (dp);

    /*
    ** TOOLS and TOOLS EXT
    */
    FUNC1(dp, ".s",        displayPStack,  FW_DEFAULT);
    FUNC1(dp, "bye",       bye,            FW_DEFAULT);
    FUNC1(dp, "forget",    forget,         FW_DEFAULT);
    FUNC1(dp, "see",       see,            FW_DEFAULT);
    FUNC1(dp, "words",     listWords,      FW_DEFAULT);

    /*
    ** Set TOOLS environment query values
    */
    FUNC2(pSys, "tools",            FICL_TRUE);
    FUNC2(pSys, "tools-ext",        FICL_FALSE);

    /*
    ** Ficl extras
    */
    FUNC1(dp, "r.s",       displayRStack,  FW_DEFAULT); /* guy carver */
    FUNC1(dp, ".env",      listEnv,        FW_DEFAULT);
    FUNC1(dp, "env-constant",
                                    envConstant,    FW_DEFAULT);
    FUNC1(dp, "env-2constant",
                                    env2Constant,   FW_DEFAULT);
    FUNC1(dp, "debug-xt",  ficlDebugXT,    FW_DEFAULT);
    FUNC1(dp, "parse-order",
                                    ficlListParseSteps,
                                                    FW_DEFAULT);
    FUNC1(dp, "step-break",stepBreak,      FW_DEFAULT);
    FUNC1(dp, "forget-wid",forgetWid,      FW_DEFAULT);
    FUNC1(dp, "see-xt",    seeXT,          FW_DEFAULT);

    return;
}