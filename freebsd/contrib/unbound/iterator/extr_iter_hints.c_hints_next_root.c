
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct iter_hints {int tree; } ;


 int name_tree_next_root (int *,int *) ;

int hints_next_root(struct iter_hints* hints, uint16_t* qclass)
{
 return name_tree_next_root(&hints->tree, qclass);
}
