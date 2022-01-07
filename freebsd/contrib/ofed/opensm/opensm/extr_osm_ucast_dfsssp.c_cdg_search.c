
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {scalar_t__ channelID; struct TYPE_4__* right; struct TYPE_4__* left; } ;
typedef TYPE_1__ cdg_node_t ;



__attribute__((used)) static cdg_node_t *cdg_search(cdg_node_t * root, uint64_t channelID)
{
 while (root) {
  if (channelID < root->channelID)
   root = root->left;
  else if (channelID > root->channelID)
   root = root->right;
  else if (channelID == root->channelID)
   return root;
 }
 return ((void*)0);
}
