
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termp {int argf; int (* headf ) (struct termp*,int ) ;} ;


 int stub1 (struct termp*,int ) ;

__attribute__((used)) static void
ascii_begin(struct termp *p)
{

 (*p->headf)(p, p->argf);
}
