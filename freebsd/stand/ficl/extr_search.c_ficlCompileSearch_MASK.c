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
 int /*<<< orphan*/  FICL_DEFAULT_VOCS ; 
 int /*<<< orphan*/  FICL_TRUE ; 
 int /*<<< orphan*/  FW_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  definitions ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ficlWordlist ; 
 int /*<<< orphan*/  forthWordlist ; 
 int /*<<< orphan*/  getCurrent ; 
 int /*<<< orphan*/  getOrder ; 
 int /*<<< orphan*/  searchPop ; 
 int /*<<< orphan*/  searchPush ; 
 int /*<<< orphan*/  searchWordlist ; 
 int /*<<< orphan*/  setCurrent ; 
 int /*<<< orphan*/  setOrder ; 
 int /*<<< orphan*/  setParentWid ; 
 int /*<<< orphan*/  widGetName ; 
 int /*<<< orphan*/  widSetName ; 

void FUNC3(FICL_SYSTEM *pSys)
{
    FICL_DICT *dp = pSys->dp;
    FUNC0 (dp);

    /*
    ** optional SEARCH-ORDER word set 
    */
    FUNC1(dp, ">search",   searchPush,     FW_DEFAULT);
    FUNC1(dp, "search>",   searchPop,      FW_DEFAULT);
    FUNC1(dp, "definitions",
                                    definitions,    FW_DEFAULT);
    FUNC1(dp, "forth-wordlist",  
                                    forthWordlist,  FW_DEFAULT);
    FUNC1(dp, "get-current",  
                                    getCurrent,     FW_DEFAULT);
    FUNC1(dp, "get-order", getOrder,       FW_DEFAULT);
    FUNC1(dp, "search-wordlist",  
                                    searchWordlist, FW_DEFAULT);
    FUNC1(dp, "set-current",  
                                    setCurrent,     FW_DEFAULT);
    FUNC1(dp, "set-order", setOrder,       FW_DEFAULT);
    FUNC1(dp, "ficl-wordlist", 
                                    ficlWordlist,   FW_DEFAULT);

    /*
    ** Set SEARCH environment query values
    */
    FUNC2(pSys, "search-order",      FICL_TRUE);
    FUNC2(pSys, "search-order-ext",  FICL_TRUE);
    FUNC2(pSys, "wordlists",         FICL_DEFAULT_VOCS);

    FUNC1(dp, "wid-get-name", widGetName,  FW_DEFAULT);
    FUNC1(dp, "wid-set-name", widSetName,  FW_DEFAULT);
    FUNC1(dp, "wid-set-super", 
                                    setParentWid,   FW_DEFAULT);
    return;
}