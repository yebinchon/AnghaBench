
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_ucred; } ;
struct nameidata {void* ni_vp; } ;


 int FREAD ;
 int LOOKUP ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT (struct nameidata*,int ,int ,int ,char const*,struct thread*) ;
 int O_NOFOLLOW ;
 int UIO_SYSSPACE ;
 int VOP_UNLOCK (void*,int ) ;
 struct thread* curthread ;
 int pwd_ensure_dirs () ;
 int vn_open_cred (struct nameidata*,int*,int ,int ,int ,int *) ;

__attribute__((used)) static void *
kobj_open_file_vnode(const char *file)
{
 struct thread *td = curthread;
 struct nameidata nd;
 int error, flags;

 pwd_ensure_dirs();

 flags = FREAD | O_NOFOLLOW;
 NDINIT(&nd, LOOKUP, 0, UIO_SYSSPACE, file, td);
 error = vn_open_cred(&nd, &flags, 0, 0, curthread->td_ucred, ((void*)0));
 if (error != 0)
  return (((void*)0));
 NDFREE(&nd, NDF_ONLY_PNBUF);

 VOP_UNLOCK(nd.ni_vp, 0);
 return (nd.ni_vp);
}
