
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zap_t ;
typedef int zap_stats_t ;
typedef int zap_leaf_t ;
typedef scalar_t__ uint64_t ;


 int RW_READER ;
 int zap_get_leaf_byblk (int *,scalar_t__,int *,int ,int **) ;
 int zap_leaf_stats (int *,int *,int *) ;
 int zap_put_leaf (int *) ;

__attribute__((used)) static void
zap_stats_ptrtbl(zap_t *zap, uint64_t *tbl, int len, zap_stats_t *zs)
{
 uint64_t lastblk = 0;






 for (int i = 0; i < len; i++) {
  zap_leaf_t *l;

  if (tbl[i] == lastblk)
   continue;
  lastblk = tbl[i];

  int err = zap_get_leaf_byblk(zap, tbl[i], ((void*)0), RW_READER, &l);
  if (err == 0) {
   zap_leaf_stats(zap, l, zs);
   zap_put_leaf(l);
  }
 }
}
