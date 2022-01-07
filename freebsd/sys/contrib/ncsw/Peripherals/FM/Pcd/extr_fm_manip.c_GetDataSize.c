
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_6__ {scalar_t__ dataSize; scalar_t__ h_NextManip; struct TYPE_6__* h_PrevManip; } ;
typedef TYPE_1__ t_FmPcdManip ;


 int MANIP_IS_UNIFIED (TYPE_1__*) ;
 scalar_t__ MANIP_IS_UNIFIED_NON_FIRST (TYPE_1__*) ;
 scalar_t__ MANIP_IS_UNIFIED_NON_LAST (TYPE_1__*) ;

__attribute__((used)) static uint16_t GetDataSize(t_FmPcdManip *p_Manip)
{
    uint16_t size = 0;
    t_FmPcdManip *p_CurManip = p_Manip;

    if (!MANIP_IS_UNIFIED(p_Manip))
        return p_Manip->dataSize;


    while (MANIP_IS_UNIFIED_NON_FIRST(p_CurManip))
        p_CurManip = p_CurManip->h_PrevManip;

    while (MANIP_IS_UNIFIED_NON_LAST(p_CurManip))
    {
        size += p_CurManip->dataSize;
        p_CurManip = (t_FmPcdManip *)p_CurManip->h_NextManip;
    }
    size += p_CurManip->dataSize;

    return (size);
}
