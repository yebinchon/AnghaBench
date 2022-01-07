
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LINUX_SS_DISABLE ;
 int SS_DISABLE ;

int
linux_to_bsd_sigaltstack(int lsa)
{
 int bsa = 0;

 if (lsa & LINUX_SS_DISABLE)
  bsa |= SS_DISABLE;




 return (bsa);
}
