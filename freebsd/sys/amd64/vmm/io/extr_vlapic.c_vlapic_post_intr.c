
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* post_intr ) (struct vlapic*,int) ;} ;
struct vlapic {TYPE_1__ ops; } ;


 int ipi_cpu (int,int) ;
 int stub1 (struct vlapic*,int) ;

void
vlapic_post_intr(struct vlapic *vlapic, int hostcpu, int ipinum)
{
 if (vlapic->ops.post_intr)
  (*vlapic->ops.post_intr)(vlapic, hostcpu);
 else
  ipi_cpu(hostcpu, ipinum);
}
