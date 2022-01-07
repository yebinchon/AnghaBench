
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfs_node {struct dentry_meta* pn_data; } ;
struct dentry {struct pfs_node* d_pfs_node; } ;
struct dentry_meta {int dm_mode; int dm_type; struct dentry dm_dnode; } ;


 int DM_DIR ;
 int M_DFSINT ;
 int M_NOWAIT ;
 int M_ZERO ;
 int PFS_NOWAIT ;
 int PFS_RD ;
 int debugfs_attr ;
 int debugfs_destroy ;
 struct pfs_node* debugfs_root ;
 int free (struct dentry_meta*,int ) ;
 struct dentry_meta* malloc (int,int ,int) ;
 struct pfs_node* pfs_create_dir (struct pfs_node*,char const*,int ,int *,int ,int) ;

struct dentry *
debugfs_create_dir(const char *name, struct dentry *parent)
{
 struct dentry_meta *dm;
 struct dentry *dnode;
 struct pfs_node *pnode;

 dm = malloc(sizeof(*dm), M_DFSINT, M_NOWAIT | M_ZERO);
 if (dm == ((void*)0))
  return (((void*)0));
 dnode = &dm->dm_dnode;
 dm->dm_mode = 0700;
 dm->dm_type = DM_DIR;
 if (parent != ((void*)0))
  pnode = parent->d_pfs_node;
 else
  pnode = debugfs_root;

 dnode->d_pfs_node = pfs_create_dir(pnode, name, debugfs_attr, ((void*)0), debugfs_destroy, PFS_RD | PFS_NOWAIT);
 if (dnode->d_pfs_node == ((void*)0)) {
  free(dm, M_DFSINT);
  return (((void*)0));
 }
 dnode->d_pfs_node->pn_data = dm;
 return (dnode);
}
