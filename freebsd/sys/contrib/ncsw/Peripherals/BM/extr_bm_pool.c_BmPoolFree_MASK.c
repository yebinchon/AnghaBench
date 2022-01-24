#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  t_Handle ;
typedef  int /*<<< orphan*/  t_Error ;
struct TYPE_9__ {int /*<<< orphan*/  h_BufferPool; int /*<<< orphan*/  (* f_PutBuf ) (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ;} ;
struct TYPE_10__ {int flags; struct TYPE_10__* sp; int /*<<< orphan*/  bpid; int /*<<< orphan*/  h_Bm; TYPE_1__ bufferPoolInfo; int /*<<< orphan*/  h_BmPortal; int /*<<< orphan*/  shadowMode; } ;
typedef  TYPE_2__ t_BmPool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int BMAN_POOL_FLAG_DEPLETION ; 
 void* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_OK ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static t_Error FUNC8(t_BmPool *p_BmPool, bool discardBuffers)
{
    t_Handle    h_BufContext;
    void        *p_Data;

    FUNC0(p_BmPool);

    if (!p_BmPool->shadowMode)
    {
        if (p_BmPool->flags & BMAN_POOL_FLAG_DEPLETION)
        {
            FUNC6(p_BmPool);
            FUNC4(p_BmPool->h_Bm, p_BmPool->bpid);
        }
        while (TRUE)
        {
            p_Data = FUNC1(p_BmPool, p_BmPool->h_BmPortal);
            if (!p_Data)
                break;
            h_BufContext = FUNC2(p_BmPool, p_Data);
            if (!discardBuffers)
                p_BmPool->bufferPoolInfo.f_PutBuf(p_BmPool->bufferPoolInfo.h_BufferPool, p_Data, h_BufContext);
        }
        FUNC3(p_BmPool->h_Bm, p_BmPool->bpid);
    }

    if (p_BmPool->sp)
        FUNC5(p_BmPool->sp);

    FUNC5(p_BmPool);

    return E_OK;
}