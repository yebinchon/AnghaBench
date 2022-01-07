
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_2__ {int (* c_out ) (char) ;} ;


 TYPE_1__* parent ;
 int stub1 (char) ;
 int stub2 (char) ;
 scalar_t__ time (int ) ;

__attribute__((used)) static void
spinc_putchar(int c)
{
 static unsigned tw_chars = 0x5C2D2F7C;
 static time_t lasttime = 0;
 time_t now;

 now = time(0);
 if (now < (lasttime + 1))
  return;




 lasttime = now;
 parent->c_out((char)tw_chars);
 tw_chars = (tw_chars >> 8) | ((tw_chars & (unsigned long)0xFF) << 24);
}
