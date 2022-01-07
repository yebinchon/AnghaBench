
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ hz ;
 unsigned long linux_timer_hz_mask ;

__attribute__((used)) static void
linux_timer_init(void *arg)
{






 linux_timer_hz_mask = 1;
 while (linux_timer_hz_mask < (unsigned long)hz)
  linux_timer_hz_mask *= 2;
 linux_timer_hz_mask--;
}
