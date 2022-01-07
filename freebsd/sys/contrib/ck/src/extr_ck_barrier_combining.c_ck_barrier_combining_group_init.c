
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_barrier_combining_queue {int * head; int * tail; } ;
struct ck_barrier_combining_group {unsigned int k; int * right; int * left; scalar_t__ sense; scalar_t__ count; } ;
struct ck_barrier_combining {int mutex; int * root; } ;


 int ck_barrier_combining_insert (struct ck_barrier_combining_group*,struct ck_barrier_combining_group*,int **) ;
 struct ck_barrier_combining_group* ck_barrier_combining_queue_dequeue (struct ck_barrier_combining_queue*) ;
 int ck_barrier_combining_queue_enqueue (struct ck_barrier_combining_queue*,int *) ;
 int ck_spinlock_fas_lock (int *) ;
 int ck_spinlock_fas_unlock (int *) ;

void
ck_barrier_combining_group_init(struct ck_barrier_combining *root,
    struct ck_barrier_combining_group *tnode,
    unsigned int nthr)
{
 struct ck_barrier_combining_group *node;
 struct ck_barrier_combining_queue queue;

 queue.head = queue.tail = ((void*)0);

 tnode->k = nthr;
 tnode->count = 0;
 tnode->sense = 0;
 tnode->left = tnode->right = ((void*)0);






 ck_spinlock_fas_lock(&root->mutex);
 ck_barrier_combining_queue_enqueue(&queue, root->root);
 while (queue.head != ((void*)0)) {
  node = ck_barrier_combining_queue_dequeue(&queue);


  if (node->left == ((void*)0)) {
   ck_barrier_combining_insert(node, tnode, &node->left);
   goto leave;
  }


  if (node->right == ((void*)0)) {
   ck_barrier_combining_insert(node, tnode, &node->right);
   goto leave;
  }





  ck_barrier_combining_queue_enqueue(&queue, node->left);
  ck_barrier_combining_queue_enqueue(&queue, node->right);
 }

leave:
 ck_spinlock_fas_unlock(&root->mutex);
 return;
}
