
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int freeMemSize; } ;
typedef TYPE_1__ t_MM ;
typedef scalar_t__ t_Handle ;


 int ASSERT_COND (TYPE_1__*) ;

uint64_t MM_GetFreeMemSize(t_Handle h_MM)
{
    t_MM *p_MM = (t_MM*)h_MM;

    ASSERT_COND(p_MM);

    return p_MM->freeMemSize;
}
