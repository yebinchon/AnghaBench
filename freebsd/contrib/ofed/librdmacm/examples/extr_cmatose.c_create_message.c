
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmatest_node {int mem; int mr; int pd; } ;


 int IBV_ACCESS_LOCAL_WRITE ;
 int free (int ) ;
 int ibv_reg_mr (int ,int ,int ,int ) ;
 int malloc (int ) ;
 scalar_t__ message_count ;
 int message_size ;
 int printf (char*) ;

__attribute__((used)) static int create_message(struct cmatest_node *node)
{
 if (!message_size)
  message_count = 0;

 if (!message_count)
  return 0;

 node->mem = malloc(message_size);
 if (!node->mem) {
  printf("failed message allocation\n");
  return -1;
 }
 node->mr = ibv_reg_mr(node->pd, node->mem, message_size,
        IBV_ACCESS_LOCAL_WRITE);
 if (!node->mr) {
  printf("failed to reg MR\n");
  goto err;
 }
 return 0;
err:
 free(node->mem);
 return -1;
}
