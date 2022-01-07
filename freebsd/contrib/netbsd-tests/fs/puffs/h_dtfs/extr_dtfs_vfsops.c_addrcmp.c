
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct puffs_usermount {int dummy; } ;
typedef void puffs_node ;



__attribute__((used)) static void *
addrcmp(struct puffs_usermount *pu, struct puffs_node *pn, void *arg)
{

 if (pn == arg)
  return pn;

 return ((void*)0);
}
