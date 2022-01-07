
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct pfs_node {struct dentry_meta* pn_data; } ;
struct file_operations {scalar_t__ write; } ;
struct dentry {struct pfs_node* d_pfs_node; } ;
struct dentry_meta {int dm_type; int dm_mode; void* dm_data; struct file_operations const* dm_fops; struct dentry dm_dnode; } ;


 int DM_FILE ;
 int M_DFSINT ;
 int M_NOWAIT ;
 int M_ZERO ;
 int PFS_NOWAIT ;
 int PFS_RD ;
 int PFS_RDWR ;
 int debugfs_attr ;
 int debugfs_destroy ;
 int debugfs_fill ;
 struct pfs_node* debugfs_root ;
 int free (struct dentry_meta*,int ) ;
 struct dentry_meta* malloc (int,int ,int) ;
 struct pfs_node* pfs_create_file (struct pfs_node*,char const*,int ,int ,int *,int ,int) ;

struct dentry *
debugfs_create_file(const char *name, umode_t mode,
      struct dentry *parent, void *data,
      const struct file_operations *fops)
{
 struct dentry_meta *dm;
 struct dentry *dnode;
 struct pfs_node *pnode;
 int flags;

 dm = malloc(sizeof(*dm), M_DFSINT, M_NOWAIT | M_ZERO);
 if (dm == ((void*)0))
  return (((void*)0));
 dnode = &dm->dm_dnode;
 dm->dm_fops = fops;
 dm->dm_data = data;
 dm->dm_mode = mode;
 dm->dm_type = DM_FILE;
 if (parent != ((void*)0))
  pnode = parent->d_pfs_node;
 else
  pnode = debugfs_root;

 flags = fops->write ? PFS_RDWR : PFS_RD;
 dnode->d_pfs_node = pfs_create_file(pnode, name, debugfs_fill,
     debugfs_attr, ((void*)0), debugfs_destroy, flags | PFS_NOWAIT);
 if (dnode->d_pfs_node == ((void*)0)) {
  free(dm, M_DFSINT);
  return (((void*)0));
 }
 dnode->d_pfs_node->pn_data = dm;

 return (dnode);
}
