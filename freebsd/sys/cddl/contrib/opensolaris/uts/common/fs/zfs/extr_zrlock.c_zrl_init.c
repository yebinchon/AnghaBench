
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * zr_caller; int * zr_owner; int zr_cv; scalar_t__ zr_refcount; int zr_mtx; } ;
typedef TYPE_1__ zrlock_t ;


 int CV_DEFAULT ;
 int MUTEX_DEFAULT ;
 int cv_init (int *,int *,int ,int *) ;
 int mutex_init (int *,int *,int ,int *) ;

void
zrl_init(zrlock_t *zrl)
{
 mutex_init(&zrl->zr_mtx, ((void*)0), MUTEX_DEFAULT, ((void*)0));
 zrl->zr_refcount = 0;
 cv_init(&zrl->zr_cv, ((void*)0), CV_DEFAULT, ((void*)0));




}
