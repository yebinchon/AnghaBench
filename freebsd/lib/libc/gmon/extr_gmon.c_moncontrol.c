
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gmonparam {int state; int lowpc; int kcountsize; scalar_t__ kcount; } ;


 int GMON_PROF_OFF ;
 int GMON_PROF_ON ;
 struct gmonparam _gmonparam ;
 int profil (char*,int ,int ,int ) ;
 int s_scale ;

void
moncontrol(int mode)
{
 struct gmonparam *p = &_gmonparam;

 if (mode) {

  profil((char *)p->kcount, p->kcountsize, p->lowpc, s_scale);
  p->state = GMON_PROF_ON;
 } else {

  profil((char *)0, 0, 0, 0);
  p->state = GMON_PROF_OFF;
 }
}
