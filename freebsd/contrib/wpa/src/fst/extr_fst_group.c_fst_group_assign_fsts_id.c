
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fst_group {int fsts_id; } ;



u32 fst_group_assign_fsts_id(struct fst_group *g)
{
 g->fsts_id++;
 return g->fsts_id;
}
