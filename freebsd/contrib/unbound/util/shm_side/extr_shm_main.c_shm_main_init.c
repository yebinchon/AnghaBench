
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void ub_stats_info ;
typedef void ub_shm_stat_info ;
struct shm_main_info {scalar_t__ key; scalar_t__ id_ctl; scalar_t__ id_arr; void* ptr_ctl; void* ptr_arr; } ;
struct daemon {int num; struct shm_main_info* shm_info; TYPE_1__* cfg; } ;
struct TYPE_2__ {scalar_t__ stat_interval; scalar_t__ shm_key; int shm_enable; } ;


 int IPC_CREAT ;
 int IPC_RMID ;
 int SHM_R ;
 scalar_t__ calloc (int,size_t) ;
 int errno ;
 int free (struct shm_main_info*) ;
 int log_err (char*,...) ;
 int log_warn (char*) ;
 int memset (void*,int ,size_t) ;
 scalar_t__ shmat (scalar_t__,int *,int ) ;
 int shmctl (scalar_t__,int ,int *) ;
 void* shmget (scalar_t__,size_t,int) ;
 int strerror (int ) ;

int shm_main_init(struct daemon* daemon)
{
 (void)daemon;

 return 1;
}
