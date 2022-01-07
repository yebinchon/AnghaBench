
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct fatEntry {size_t next; scalar_t__ length; } ;
struct bootblock {size_t NumClusters; } ;
typedef size_t cl_t ;


 size_t CLUST_EOF ;
 size_t CLUST_FIRST ;
 int FSERROR ;
 int FSFATMOD ;
 scalar_t__ ask (int ,char*,...) ;
 int clearchain (struct bootblock*,struct fatEntry*,size_t) ;

int
tryclear(struct bootblock *boot, struct fatEntry *fat, cl_t head, cl_t *truncp)
{
 if (ask(0, "Clear chain starting at %u", head)) {
  clearchain(boot, fat, head);
  return FSFATMOD;
 } else if (ask(0, "Truncate")) {
  uint32_t len;
  cl_t p;

  for (p = head, len = 0;
      p >= CLUST_FIRST && p < boot->NumClusters;
      p = fat[p].next, len++)
   continue;
  *truncp = CLUST_EOF;
  fat[head].length = len;
  return FSFATMOD;
 } else
  return FSERROR;
}
