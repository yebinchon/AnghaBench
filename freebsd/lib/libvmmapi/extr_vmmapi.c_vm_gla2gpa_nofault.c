
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmctx {int fd; } ;
struct vm_guest_paging {int dummy; } ;
struct vm_gla2gpa {int vcpuid; int prot; int fault; int gpa; struct vm_guest_paging paging; int gla; } ;


 int VM_GLA2GPA_NOFAULT ;
 int bzero (struct vm_gla2gpa*,int) ;
 int ioctl (int ,int ,struct vm_gla2gpa*) ;

int
vm_gla2gpa_nofault(struct vmctx *ctx, int vcpu, struct vm_guest_paging *paging,
    uint64_t gla, int prot, uint64_t *gpa, int *fault)
{
 struct vm_gla2gpa gg;
 int error;

 bzero(&gg, sizeof(struct vm_gla2gpa));
 gg.vcpuid = vcpu;
 gg.prot = prot;
 gg.gla = gla;
 gg.paging = *paging;

 error = ioctl(ctx->fd, VM_GLA2GPA_NOFAULT, &gg);
 if (error == 0) {
  *fault = gg.fault;
  *gpa = gg.gpa;
 }
 return (error);
}
