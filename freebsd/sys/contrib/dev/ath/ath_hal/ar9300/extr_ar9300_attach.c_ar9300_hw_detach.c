
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;


 int ar9300_ani_detach (struct ath_hal*) ;

__attribute__((used)) static inline void
ar9300_hw_detach(struct ath_hal *ah)
{

    ar9300_ani_detach(ah);
}
