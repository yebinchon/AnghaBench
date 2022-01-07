
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
struct nameidata {int * ni_vp; } ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
typedef enum symfollow { ____Placeholder_symfollow } symfollow ;


 int ASSERT (int ) ;
 int LK_RETRY ;
 int LOCKLEAF ;
 int LOOKUP ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT_ATVP (struct nameidata*,int ,int,int,char*,int *,int ) ;
 int VOP_ISLOCKED (int *) ;
 int VOP_UNLOCK (int *,int ) ;
 int curthread ;
 int namei (struct nameidata*) ;
 int vn_lock (int *,int) ;
 int vref (int *) ;

int
lookupnameat(char *dirname, enum uio_seg seg, enum symfollow follow,
    vnode_t **dirvpp, vnode_t **compvpp, vnode_t *startvp)
{
 struct nameidata nd;
 int error, ltype;

 ASSERT(dirvpp == ((void*)0));

 vref(startvp);
 ltype = VOP_ISLOCKED(startvp);
 VOP_UNLOCK(startvp, 0);
 NDINIT_ATVP(&nd, LOOKUP, LOCKLEAF | follow, seg, dirname,
     startvp, curthread);
 error = namei(&nd);
 *compvpp = nd.ni_vp;
 NDFREE(&nd, NDF_ONLY_PNBUF);
 vn_lock(startvp, ltype | LK_RETRY);
 return (error);
}
