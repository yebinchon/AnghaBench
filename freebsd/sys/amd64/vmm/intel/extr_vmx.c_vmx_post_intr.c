
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlapic {int dummy; } ;


 int ipi_cpu (int,int ) ;
 int pirvec ;

__attribute__((used)) static void
vmx_post_intr(struct vlapic *vlapic, int hostcpu)
{

 ipi_cpu(hostcpu, pirvec);
}
