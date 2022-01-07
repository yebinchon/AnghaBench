
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_pfs_node; } ;


 int pfs_destroy (int ) ;

void
debugfs_remove(struct dentry *dnode)
{
 if (dnode == ((void*)0))
  return;

 pfs_destroy(dnode->d_pfs_node);
}
