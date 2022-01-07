
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ netEnvId; scalar_t__ valid; int h_FmPcd; } ;
typedef TYPE_1__ t_FmPcdKgScheme ;


 int ASSERT_COND (int) ;
 int FmPcdIncNetEnvOwners (int ,scalar_t__) ;
 scalar_t__ ILLEGAL_NETENV ;
 scalar_t__ TRUE ;

__attribute__((used)) static void ValidateSchemeSw(t_FmPcdKgScheme *p_Scheme)
{
    ASSERT_COND(!p_Scheme->valid);
    if (p_Scheme->netEnvId != ILLEGAL_NETENV)
        FmPcdIncNetEnvOwners(p_Scheme->h_FmPcd, p_Scheme->netEnvId);
    p_Scheme->valid = TRUE;
}
