
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_barrier_combining_group {int k; struct ck_barrier_combining_group* parent; } ;



__attribute__((used)) static void
ck_barrier_combining_insert(struct ck_barrier_combining_group *parent,
    struct ck_barrier_combining_group *tnode,
    struct ck_barrier_combining_group **child)
{

 *child = tnode;
 tnode->parent = parent;






 parent->k++;
 return;
}
