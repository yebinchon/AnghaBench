
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vdso_timehands {int th_res; int th_physical; int th_algo; } ;
struct timecounter {int dummy; } ;
struct TYPE_2__ {int physical; } ;


 int VDSO_TH_ALGO_ARM_GENTIM ;
 TYPE_1__* arm_tmr_sc ;
 int bzero (int ,int) ;

__attribute__((used)) static uint32_t
arm_tmr_fill_vdso_timehands(struct vdso_timehands *vdso_th,
    struct timecounter *tc)
{

 vdso_th->th_algo = VDSO_TH_ALGO_ARM_GENTIM;
 vdso_th->th_physical = arm_tmr_sc->physical;
 bzero(vdso_th->th_res, sizeof(vdso_th->th_res));
 return (1);
}
