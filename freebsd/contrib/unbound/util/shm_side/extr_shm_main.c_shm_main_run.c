
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_18__ {TYPE_3__* rrset_cache; int * msg_cache; TYPE_7__* now_tv; } ;
struct worker {int thread_num; TYPE_6__* daemon; TYPE_9__ env; } ;
struct ub_stats_info {double mesh_time_median; } ;
struct TYPE_14__ {long long msg; long long rrset; long long dnscrypt_shared_secret; long long dnscrypt_nonce; long long val; long long iter; long long respip; long long subnet; long long ipsecmod; } ;
struct TYPE_11__ {long long now_sec; long long now_usec; int elapsed_usec; int elapsed_sec; int up_usec; int up_sec; } ;
struct ub_shm_stat_info {TYPE_5__ mem; TYPE_2__ time; } ;
struct TYPE_17__ {scalar_t__ tv_sec; } ;
struct TYPE_16__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_15__ {scalar_t__ num; TYPE_4__* dnscenv; TYPE_8__ time_last_stat; TYPE_8__ time_boot; TYPE_1__* shm_info; } ;
struct TYPE_13__ {int * nonces_cache; int * shared_secrets_cache; } ;
struct TYPE_12__ {int table; } ;
struct TYPE_10__ {struct ub_shm_stat_info* ptr_ctl; struct ub_stats_info* ptr_arr; } ;


 int VERB_DETAIL ;
 int memset (struct ub_stats_info*,int ,int) ;
 scalar_t__ mod_get_mem (TYPE_9__*,char*) ;
 int server_stats_add (struct ub_stats_info*,struct ub_stats_info*) ;
 int server_stats_compile (struct worker*,struct ub_stats_info*,int ) ;
 scalar_t__ slabhash_get_mem (int *) ;
 int stat_timeval_subtract (int *,int *,TYPE_7__*,TYPE_8__*) ;
 int verbose (int ,char*,int,TYPE_6__*,unsigned int,unsigned int) ;

void shm_main_run(struct worker *worker)
{
 (void)worker;

}
