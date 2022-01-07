
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmcb_segment {int dummy; } ;
struct vmcb {int dummy; } ;


 int EINVAL ;
 int bcopy (struct vmcb_segment*,struct vmcb_segment*,int) ;
 struct vmcb_segment* vmcb_segptr (struct vmcb*,int) ;

int
vmcb_seg(struct vmcb *vmcb, int ident, struct vmcb_segment *seg2)
{
 struct vmcb_segment *seg;

 seg = vmcb_segptr(vmcb, ident);
 if (seg != ((void*)0)) {
  bcopy(seg, seg2, sizeof(struct vmcb_segment));
  return (0);
 } else {
  return (EINVAL);
 }
}
