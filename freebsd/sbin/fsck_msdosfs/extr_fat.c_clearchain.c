
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fatEntry {size_t head; size_t next; scalar_t__ length; } ;
struct bootblock {size_t NumClusters; } ;
typedef size_t cl_t ;


 size_t CLUST_FIRST ;
 size_t CLUST_FREE ;

void
clearchain(struct bootblock *boot, struct fatEntry *fat, cl_t head)
{
 cl_t p, q;

 for (p = head; p >= CLUST_FIRST && p < boot->NumClusters; p = q) {
  if (fat[p].head != head)
   break;
  q = fat[p].next;
  fat[p].next = fat[p].head = CLUST_FREE;
  fat[p].length = 0;
 }
}
