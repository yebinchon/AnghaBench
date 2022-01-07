
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct fpu_cc_ent {int ctx; } ;


 int ENOMEM ;
 int FPU_KERN_NORMAL ;
 int curthread ;
 int fpu_kern_enter (int ,int ,int ) ;
 int fpu_kern_leave (int ,int ) ;
 int release_fpu_cc_ent (struct fpu_cc_ent*) ;
 struct fpu_cc_ent* request_fpu_cc_ent () ;
 int x86_64_call2 (void*,int ,int ) ;

uint64_t
_x86_64_call2(void *fn, uint64_t a, uint64_t b)
{
 struct fpu_cc_ent *ent;
 uint64_t ret;

 if ((ent = request_fpu_cc_ent()) == ((void*)0))
  return (ENOMEM);
 fpu_kern_enter(curthread, ent->ctx, FPU_KERN_NORMAL);
 ret = x86_64_call2(fn, a, b);
 fpu_kern_leave(curthread, ent->ctx);
 release_fpu_cc_ent(ent);

 return (ret);
}
