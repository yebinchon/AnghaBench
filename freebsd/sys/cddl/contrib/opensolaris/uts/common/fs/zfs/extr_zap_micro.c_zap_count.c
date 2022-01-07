
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int zap_num_entries; } ;
struct TYPE_7__ {TYPE_1__ zap_m; int zap_ismicro; } ;
typedef TYPE_2__ zap_t ;
typedef int uint64_t ;
typedef int objset_t ;


 int FALSE ;
 int FTAG ;
 int RW_READER ;
 int TRUE ;
 int fzap_count (TYPE_2__*,int *) ;
 int zap_lockdir (int *,int ,int *,int ,int ,int ,int ,TYPE_2__**) ;
 int zap_unlockdir (TYPE_2__*,int ) ;

int
zap_count(objset_t *os, uint64_t zapobj, uint64_t *count)
{
 zap_t *zap;

 int err =
     zap_lockdir(os, zapobj, ((void*)0), RW_READER, TRUE, FALSE, FTAG, &zap);
 if (err != 0)
  return (err);
 if (!zap->zap_ismicro) {
  err = fzap_count(zap, count);
 } else {
  *count = zap->zap_m.zap_num_entries;
 }
 zap_unlockdir(zap, FTAG);
 return (err);
}
