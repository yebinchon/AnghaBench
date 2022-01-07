
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alarmtimer (int ) ;
 int fileno (int ) ;
 scalar_t__ fromatty ;
 int jabort ;
 int siglongjmp (int ,int) ;
 int ttyout ;
 int write (int ,char*,int) ;

__attribute__((used)) static void
mintr(int signo)
{

 alarmtimer(0);
 if (fromatty)
  write(fileno(ttyout), "\n", 1);
 siglongjmp(jabort, 1);
}
