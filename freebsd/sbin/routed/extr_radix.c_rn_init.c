
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Bzero (char*,int) ;
 char* addmask_key ;
 int mask_rnhead ;
 int max_keylen ;
 int panic (char*) ;
 int printf (char*) ;
 scalar_t__ rn_inithead (int *,int ) ;
 char* rn_ones ;
 char* rn_zeros ;
 scalar_t__ rtmalloc (int,char*) ;

void
rn_init(void)
{
 char *cp, *cplim;
 if (max_keylen == 0) {
  printf("rn_init: radix functions require max_keylen be set\n");
  return;
 }
 rn_zeros = (char *)rtmalloc(3 * max_keylen, "rn_init");
 Bzero(rn_zeros, 3 * max_keylen);
 rn_ones = cp = rn_zeros + max_keylen;
 addmask_key = cplim = rn_ones + max_keylen;
 while (cp < cplim)
  *cp++ = -1;
 if (rn_inithead(&mask_rnhead, 0) == 0)
  panic("rn_init 2");
}
