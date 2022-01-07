
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct daemon {TYPE_2__* shm_info; TYPE_1__* cfg; } ;
struct TYPE_4__ {scalar_t__ id_ctl; scalar_t__ id_arr; scalar_t__ ptr_arr; scalar_t__ ptr_ctl; int key; } ;
struct TYPE_3__ {int shm_enable; } ;


 int IPC_RMID ;
 int VERB_DETAIL ;
 int shmctl (scalar_t__,int ,int *) ;
 int shmdt (scalar_t__) ;
 int verbose (int ,char*,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

void shm_main_shutdown(struct daemon* daemon)
{
 (void)daemon;

}
