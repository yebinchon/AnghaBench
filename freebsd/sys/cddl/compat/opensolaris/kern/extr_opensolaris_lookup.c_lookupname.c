
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
typedef enum symfollow { ____Placeholder_symfollow } symfollow ;


 int lookupnameat (char*,int,int,int **,int **,int *) ;

int
lookupname(char *dirname, enum uio_seg seg, enum symfollow follow,
    vnode_t **dirvpp, vnode_t **compvpp)
{

 return (lookupnameat(dirname, seg, follow, dirvpp, compvpp, ((void*)0)));
}
