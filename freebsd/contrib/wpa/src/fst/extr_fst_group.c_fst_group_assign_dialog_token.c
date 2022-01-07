
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct fst_group {scalar_t__ dialog_token; } ;



u8 fst_group_assign_dialog_token(struct fst_group *g)
{
 g->dialog_token++;
 if (g->dialog_token == 0)
  g->dialog_token++;
 return g->dialog_token;
}
