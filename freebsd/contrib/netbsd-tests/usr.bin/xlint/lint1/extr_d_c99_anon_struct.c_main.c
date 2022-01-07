
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int x; } ;
struct bar {TYPE_1__ top_left; } ;



int
main(void)
{
 struct bar b;
 b.top_left.x = 1;
 return 0;
}
