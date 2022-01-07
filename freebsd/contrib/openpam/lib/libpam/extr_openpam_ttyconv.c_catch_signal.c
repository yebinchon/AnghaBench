
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int caught_signal ;

__attribute__((used)) static void
catch_signal(int signo)
{

 switch (signo) {
 case 130:
 case 129:
 case 128:
  caught_signal = signo;
  break;
 }
}
