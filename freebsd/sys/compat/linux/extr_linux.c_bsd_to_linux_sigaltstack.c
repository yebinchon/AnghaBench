
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LINUX_SS_DISABLE ;
 int LINUX_SS_ONSTACK ;
 int SS_DISABLE ;
 int SS_ONSTACK ;

int
bsd_to_linux_sigaltstack(int bsa)
{
 int lsa = 0;

 if (bsa & SS_DISABLE)
  lsa |= LINUX_SS_DISABLE;
 if (bsa & SS_ONSTACK)
  lsa |= LINUX_SS_ONSTACK;
 return (lsa);
}
