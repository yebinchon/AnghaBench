
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucond {int dummy; } ;


 int bzero (struct ucond*,int) ;

void
_thr_ucond_init(struct ucond *cv)
{

 bzero(cv, sizeof(struct ucond));
}
