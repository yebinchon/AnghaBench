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
typedef  int /*<<< orphan*/  paramValues_t ;
typedef  int /*<<< orphan*/  cParams ;
typedef  int /*<<< orphan*/  ZSTD_compressionParameters ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 unsigned long long const PARAMTABLEMASK ; 
 unsigned long long FUNC0 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * g_alreadyTested ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BYTE* FUNC3(paramValues_t p)
{
    ZSTD_compressionParameters const cParams = FUNC1(FUNC2(p));
    unsigned long long const h64 = FUNC0(&cParams, sizeof(cParams), 0);
    return &g_alreadyTested[(h64 >> 3) & PARAMTABLEMASK];
}