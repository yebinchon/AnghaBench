
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int seeninfo ;
 int seenint ;

__attribute__((used)) static void
onsignal(int sig)
{

 switch (sig) {
 case 128:
 case 130:
  seenint++;
  break;

 case 129:
  seeninfo++;
  break;

 }
}
