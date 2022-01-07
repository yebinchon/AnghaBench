
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int zap_num_entries; } ;
struct TYPE_13__ {TYPE_2__ zap_m; TYPE_1__* zap_dbuf; scalar_t__ zap_ismicro; } ;
typedef TYPE_3__ zap_t ;
struct TYPE_14__ {int zs_num_blocks; int zs_num_entries; int zs_blocksize; } ;
typedef TYPE_4__ zap_stats_t ;
typedef int uint64_t ;
typedef int objset_t ;
struct TYPE_11__ {int db_size; } ;


 int FALSE ;
 int FTAG ;
 int RW_READER ;
 int TRUE ;
 int bzero (TYPE_4__*,int) ;
 int fzap_get_stats (TYPE_3__*,TYPE_4__*) ;
 int zap_lockdir (int *,int ,int *,int ,int ,int ,int ,TYPE_3__**) ;
 int zap_unlockdir (TYPE_3__*,int ) ;

int
zap_get_stats(objset_t *os, uint64_t zapobj, zap_stats_t *zs)
{
 zap_t *zap;

 int err =
     zap_lockdir(os, zapobj, ((void*)0), RW_READER, TRUE, FALSE, FTAG, &zap);
 if (err != 0)
  return (err);

 bzero(zs, sizeof (zap_stats_t));

 if (zap->zap_ismicro) {
  zs->zs_blocksize = zap->zap_dbuf->db_size;
  zs->zs_num_entries = zap->zap_m.zap_num_entries;
  zs->zs_num_blocks = 1;
 } else {
  fzap_get_stats(zap, zs);
 }
 zap_unlockdir(zap, FTAG);
 return (0);
}
