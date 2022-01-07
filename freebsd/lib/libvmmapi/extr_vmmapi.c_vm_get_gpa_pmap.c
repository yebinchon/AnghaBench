
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmctx {int fd; } ;
struct vm_gpa_pte {int ptenum; int * pte; int gpa; } ;
typedef int gpapte ;


 int VM_GET_GPA_PMAP ;
 int bzero (struct vm_gpa_pte*,int) ;
 int ioctl (int ,int ,struct vm_gpa_pte*) ;

int
vm_get_gpa_pmap(struct vmctx *ctx, uint64_t gpa, uint64_t *pte, int *num)
{
 int error, i;
 struct vm_gpa_pte gpapte;

 bzero(&gpapte, sizeof(gpapte));
 gpapte.gpa = gpa;

 error = ioctl(ctx->fd, VM_GET_GPA_PMAP, &gpapte);

 if (error == 0) {
  *num = gpapte.ptenum;
  for (i = 0; i < gpapte.ptenum; i++)
   pte[i] = gpapte.pte[i];
 }

 return (error);
}
