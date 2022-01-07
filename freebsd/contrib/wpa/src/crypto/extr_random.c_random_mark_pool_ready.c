
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MIN_READY_MARK ;
 int MSG_DEBUG ;
 int own_pool_ready ;
 int random_write_entropy () ;
 int wpa_printf (int ,char*,int ,int ) ;

void random_mark_pool_ready(void)
{
 own_pool_ready++;
 wpa_printf(MSG_DEBUG, "random: Mark internal entropy pool to be "
     "ready (count=%u/%u)", own_pool_ready, MIN_READY_MARK);
 random_write_entropy();
}
