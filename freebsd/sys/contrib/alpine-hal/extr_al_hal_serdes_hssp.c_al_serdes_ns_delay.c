
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int al_udelay (int) ;

__attribute__((used)) static inline void al_serdes_ns_delay(int cnt)
{
 al_udelay((cnt + 999) / 1000);
}
