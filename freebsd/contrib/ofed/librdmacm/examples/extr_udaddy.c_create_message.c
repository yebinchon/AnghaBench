
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_grh {int dummy; } ;
struct cmatest_node {int mem; int mr; int pd; } ;


 int IBV_ACCESS_LOCAL_WRITE ;
 int free (int ) ;
 int ibv_reg_mr (int ,int ,scalar_t__,int ) ;
 int malloc (scalar_t__) ;
 scalar_t__ message_count ;
 scalar_t__ message_size ;
 int printf (char*) ;

__attribute__((used)) static int create_message(struct cmatest_node *node)
{
 if (!message_size)
  message_count = 0;

 if (!message_count)
  return 0;

 node->mem = malloc(message_size + sizeof(struct ibv_grh));
 if (!node->mem) {
  printf("failed message allocation\n");
  return -1;
 }
 node->mr = ibv_reg_mr(node->pd, node->mem,
         message_size + sizeof(struct ibv_grh),
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
