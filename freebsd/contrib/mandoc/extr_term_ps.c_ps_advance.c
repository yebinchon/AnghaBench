
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct termp {TYPE_1__* ps; } ;
struct TYPE_2__ {size_t pscol; } ;


 int ps_pclose (struct termp*) ;
 int ps_plast (struct termp*) ;

__attribute__((used)) static void
ps_advance(struct termp *p, size_t len)
{
 ps_plast(p);
 ps_pclose(p);
 p->ps->pscol += len;
}
