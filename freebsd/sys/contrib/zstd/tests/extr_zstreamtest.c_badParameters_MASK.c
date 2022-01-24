#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ checksumFlag; scalar_t__ contentSizeFlag; scalar_t__ noDictIDFlag; } ;
struct TYPE_6__ {scalar_t__ windowLog; scalar_t__ hashLog; scalar_t__ chainLog; scalar_t__ searchLog; scalar_t__ minMatch; scalar_t__ targetLength; } ;
struct TYPE_8__ {TYPE_2__ fParams; TYPE_1__ cParams; } ;
typedef  TYPE_3__ ZSTD_parameters ;
typedef  int /*<<< orphan*/  ZSTD_CCtx ;
typedef  int U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static U32 FUNC3(ZSTD_CCtx* zc, ZSTD_parameters const savedParams)
{
    ZSTD_parameters params;
    if (FUNC1(FUNC2(zc, &params))) return 10;
    FUNC0(1, params.cParams.windowLog != savedParams.cParams.windowLog, "windowLog");
    FUNC0(2, params.cParams.hashLog != savedParams.cParams.hashLog, "hashLog");
    FUNC0(3, params.cParams.chainLog != savedParams.cParams.chainLog, "chainLog");
    FUNC0(4, params.cParams.searchLog != savedParams.cParams.searchLog, "searchLog");
    FUNC0(5, params.cParams.minMatch != savedParams.cParams.minMatch, "minMatch");
    FUNC0(6, params.cParams.targetLength != savedParams.cParams.targetLength, "targetLength");

    FUNC0(7, params.fParams.checksumFlag != savedParams.fParams.checksumFlag, "checksumFlag");
    FUNC0(8, params.fParams.contentSizeFlag != savedParams.fParams.contentSizeFlag, "contentSizeFlag");
    FUNC0(9, params.fParams.noDictIDFlag != savedParams.fParams.noDictIDFlag, "noDictIDFlag");
    return 0;
}