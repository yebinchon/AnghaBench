
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cSpeed; int dSpeed; scalar_t__ cMem; } ;
typedef TYPE_1__ constraint_t ;
typedef scalar_t__ U32 ;


 int g_strictness ;

__attribute__((used)) static constraint_t relaxTarget(constraint_t target) {
    target.cMem = (U32)-1;
    target.cSpeed = (target.cSpeed * g_strictness) / 100;
    target.dSpeed = (target.dSpeed * g_strictness) / 100;
    return target;
}
