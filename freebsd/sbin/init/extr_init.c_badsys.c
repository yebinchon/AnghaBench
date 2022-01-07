
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disaster (int) ;

__attribute__((used)) static void
badsys(int sig)
{
 static int badcount = 0;

 if (badcount++ < 25)
  return;
 disaster(sig);
}
