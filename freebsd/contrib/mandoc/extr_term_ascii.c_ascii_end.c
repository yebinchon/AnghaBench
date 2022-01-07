
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termp {int argf; int (* footf ) (struct termp*,int ) ;} ;


 int stub1 (struct termp*,int ) ;

__attribute__((used)) static void
ascii_end(struct termp *p)
{

 (*p->footf)(p, p->argf);
}
