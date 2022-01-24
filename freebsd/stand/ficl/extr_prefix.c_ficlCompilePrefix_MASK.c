#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {TYPE_3__* pCompile; } ;
struct TYPE_15__ {char* name; } ;
struct TYPE_14__ {TYPE_4__* dp; } ;
struct TYPE_13__ {int /*<<< orphan*/  code; } ;
typedef  TYPE_1__ FICL_WORD ;
typedef  TYPE_2__ FICL_SYSTEM ;
typedef  TYPE_3__ FICL_HASH ;
typedef  TYPE_4__ FICL_DICT ;

/* Variables and functions */
 int /*<<< orphan*/  FW_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  constantParen ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  fTempBase ; 
 TYPE_1__* FUNC4 (TYPE_2__*,char*) ; 
 char* list_name ; 
 int /*<<< orphan*/  prefixHex ; 
 int /*<<< orphan*/  prefixTen ; 

void FUNC5(FICL_SYSTEM *pSys)
{
    FICL_DICT *dp = pSys->dp;
    FICL_HASH *pHash;
    FICL_HASH *pPrevCompile = dp->pCompile;
#if (FICL_EXTENDED_PREFIX)
    FICL_WORD *pFW;
#endif
    
    /*
    ** Create a named wordlist for prefixes to reside in...
    ** Since we're doing a special kind of search, make it
    ** a single bucket hashtable - hashing does not help here.
    */
    pHash = FUNC3(dp, 1);
    pHash->name = list_name;
    FUNC2(dp, list_name, constantParen, FW_DEFAULT);
    FUNC1(dp, FUNC0(pHash));

	/*
	** Put __tempbase in the forth-wordlist
	*/
    FUNC2(dp, "__tempbase", fTempBase, FW_DEFAULT);

    /*
    ** Temporarily make the prefix list the compile wordlist so that
    ** we can create some precompiled prefixes.
    */
    dp->pCompile = pHash;
    FUNC2(dp, "0x", prefixHex, FW_DEFAULT);
    FUNC2(dp, "0d", prefixTen, FW_DEFAULT);
#if (FICL_EXTENDED_PREFIX)
    pFW = ficlLookup(pSys, "\\");
    if (pFW)
    {
        dictAppendWord(dp, "//", pFW->code, FW_DEFAULT);
    }
#endif
    dp->pCompile = pPrevCompile;

    return;
}