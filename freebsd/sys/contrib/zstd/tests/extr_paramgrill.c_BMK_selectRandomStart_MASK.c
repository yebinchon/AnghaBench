#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__* vals; } ;
struct TYPE_10__ {TYPE_2__ const params; } ;
typedef  TYPE_1__ winnerInfo_t ;
typedef  TYPE_2__ paramValues_t ;
typedef  int /*<<< orphan*/  contexts_t ;
struct TYPE_12__ {int /*<<< orphan*/  srcSize; } ;
typedef  TYPE_3__ buffers_t ;
typedef  size_t U32 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int NB_LEVELS_TRACKED ; 
 TYPE_2__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_rand ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__ const,TYPE_3__ const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 size_t wlog_ind ; 

__attribute__((used)) static void
FUNC6( FILE* f,
                       winnerInfo_t* winners,
                       const buffers_t buf, const contexts_t ctx)
{
    U32 const id = FUNC0(&g_rand) % (NB_LEVELS_TRACKED+1);
    if ((id==0) || (winners[id].params.vals[wlog_ind]==0)) {
        /* use some random entry */
        paramValues_t const p = FUNC1(FUNC2(FUNC4(FUNC5())), /* defaults nonCompression parameters */
                                             buf.srcSize, 0);
        FUNC3(f, winners, p, buf, ctx);
    } else {
        FUNC3(f, winners, winners[id].params, buf, ctx);
    }
}