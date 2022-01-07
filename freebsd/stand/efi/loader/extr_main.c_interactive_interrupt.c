
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int fail_timeout ;
 int getsecs () ;
 scalar_t__ ischar () ;
 int printf (char*,...) ;

__attribute__((used)) static bool
interactive_interrupt(const char *msg)
{
 time_t now, then, last;

 last = 0;
 now = then = getsecs();
 printf("%s\n", msg);
 if (fail_timeout == -2)
  return (1);
 if (fail_timeout == -1)
  return (0);
 do {
  if (last != now) {
   printf("press any key to interrupt reboot in %d seconds\r",
       fail_timeout - (int)(now - then));
   last = now;
  }


  if (ischar())
   return (1);
  now = getsecs();
 } while (now - then < fail_timeout);
 return (0);
}
