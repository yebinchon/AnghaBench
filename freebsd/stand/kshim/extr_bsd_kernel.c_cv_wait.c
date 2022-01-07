
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {int dummy; } ;
struct cv {int dummy; } ;


 int cv_timedwait (struct cv*,struct mtx*,int) ;

void
cv_wait(struct cv *cv, struct mtx *mtx)
{
 cv_timedwait(cv, mtx, -1);
}
