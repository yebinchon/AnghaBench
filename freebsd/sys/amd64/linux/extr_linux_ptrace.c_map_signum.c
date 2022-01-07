
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int LINUX_SIGRTMAX ;
 int SIGSTOP ;
 int linux_to_bsd_signal (int) ;

__attribute__((used)) static int
map_signum(int lsig, int *bsigp)
{
 int bsig;

 if (lsig == 0) {
  *bsigp = 0;
  return (0);
 }

 if (lsig < 0 || lsig > LINUX_SIGRTMAX)
  return (EINVAL);

 bsig = linux_to_bsd_signal(lsig);
 if (bsig == SIGSTOP)
  bsig = 0;

 *bsigp = bsig;
 return (0);
}
