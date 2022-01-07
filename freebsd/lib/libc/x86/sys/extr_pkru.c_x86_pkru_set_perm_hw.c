
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;


 int EINVAL ;
 int MAX_PKRU_IDX ;
 int errno ;
 int rdpkru () ;
 int wrpkru (int) ;

__attribute__((used)) static int
x86_pkru_set_perm_hw(u_int keyidx, int access, int modify)
{
 uint32_t pkru;

 if (keyidx > MAX_PKRU_IDX) {
  errno = EINVAL;
  return (-1);
 }
 keyidx *= 2;
 pkru = rdpkru();
 pkru &= ~(3 << keyidx);
 if (!access)
  pkru |= 1 << keyidx;
 if (!modify)
  pkru |= 2 << keyidx;
 wrpkru(pkru);
 return (0);
}
