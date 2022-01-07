
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_barrier_combining_group {int * right; int left; int parent; scalar_t__ sense; scalar_t__ count; scalar_t__ k; } ;
struct ck_barrier_combining {struct ck_barrier_combining_group* root; int mutex; } ;


 int ck_spinlock_fas_init (int *) ;

void
ck_barrier_combining_init(struct ck_barrier_combining *root,
    struct ck_barrier_combining_group *init_root)
{

 init_root->k = 0;
 init_root->count = 0;
 init_root->sense = 0;
 init_root->parent = init_root->left = init_root->right = ((void*)0);
 ck_spinlock_fas_init(&root->mutex);
 root->root = init_root;
 return;
}
