
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vdso_timehands {int th_res; int th_x86_hpet_idx; scalar_t__ th_x86_shift; int th_algo; } ;
struct timecounter {struct hpet_softc* tc_priv; } ;
struct hpet_softc {scalar_t__ mmap_allow; int dev; } ;


 int VDSO_TH_ALGO_X86_HPET ;
 int bzero (int ,int) ;
 int device_get_unit (int ) ;

uint32_t
hpet_vdso_timehands(struct vdso_timehands *vdso_th, struct timecounter *tc)
{
 struct hpet_softc *sc;

 sc = tc->tc_priv;
 vdso_th->th_algo = VDSO_TH_ALGO_X86_HPET;
 vdso_th->th_x86_shift = 0;
 vdso_th->th_x86_hpet_idx = device_get_unit(sc->dev);
 bzero(vdso_th->th_res, sizeof(vdso_th->th_res));
 return (sc->mmap_allow != 0);
}
