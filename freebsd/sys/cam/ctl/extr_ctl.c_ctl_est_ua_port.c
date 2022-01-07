
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ctl_lun {int ** pending_ua; int lun_lock; } ;
typedef int ctl_ua_type ;


 int CTL_MAX_INIT_PER_PORT ;
 int MA_OWNED ;
 int mtx_assert (int *,int ) ;

void
ctl_est_ua_port(struct ctl_lun *lun, int port, uint32_t except, ctl_ua_type ua)
{
 int i;

 mtx_assert(&lun->lun_lock, MA_OWNED);
 if (lun->pending_ua[port] == ((void*)0))
  return;
 for (i = 0; i < CTL_MAX_INIT_PER_PORT; i++) {
  if (port * CTL_MAX_INIT_PER_PORT + i == except)
   continue;
  lun->pending_ua[port][i] |= ua;
 }
}
