
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct termp {int dummy; } ;
struct TYPE_4__ {TYPE_1__* gly; } ;
struct TYPE_3__ {int wx; } ;


 int MAXCHAR ;
 scalar_t__ TERMFONT_NONE ;
 TYPE_2__* fonts ;

__attribute__((used)) static size_t
ps_width(const struct termp *p, int c)
{

 if (c <= 32 || c - 32 >= MAXCHAR)
  c = 0;
 else
  c -= 32;

 return (size_t)fonts[(int)TERMFONT_NONE].gly[c].wx;
}
