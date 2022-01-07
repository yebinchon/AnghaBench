
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlapic {int dummy; } ;


 int panic (char*) ;

__attribute__((used)) static void
vmx_intr_accepted(struct vlapic *vlapic, int vector)
{

 panic("vmx_intr_accepted: not expected to be called");
}
