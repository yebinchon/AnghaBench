
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_3__ {int physicalMuramBase; } ;
typedef TYPE_1__ t_FmPcd ;


 int ASSERT_COND (TYPE_1__*) ;

__attribute__((used)) static __inline__ uint64_t FmPcdGetMuramPhysBase(t_Handle h_FmPcd)
{
    t_FmPcd *p_FmPcd = (t_FmPcd*)h_FmPcd;
    ASSERT_COND(p_FmPcd);
    return p_FmPcd->physicalMuramBase;
}
